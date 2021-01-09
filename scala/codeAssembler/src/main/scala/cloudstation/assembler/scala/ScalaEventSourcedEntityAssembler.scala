package cloudstation.assembler.scala

import cloudstation.assembler.scala.ops.implicits.{asStringHelper, asTypeReferenceHelper}
import cloudstation.assembler.{StringWritableFile, WritableFile}
import cloudstation.project.{EventSourcedEntity, Project}

case class ScalaEventSourcedEntityAssembler(project: Project, version: String, entity: EventSourcedEntity) extends ScalaEntityAssembler {

  def dockerfileFile: WritableFile =
    ScalaEventSourcedEntityAssembler.dockerfile

  def buildSbtFile: WritableFile =
    StringWritableFile(
      "./build.sbt",
      raw"""name := "cloudstation-user-project"
           |version := $version
           |scalaVersion := "2.13.3"
           |
           |lazy val root =
           |  Project(id = "root", base = file("."))
           |    .settings(
           |      name := "root",
           |      skip in publish := true,
           |    )
           |    .withId("root")
           |    .aggregate(protos, service)
           |
           |lazy val protos =
           |  project
           |    .enablePlugins(AkkaGrpcPlugin)
           |    .settings(commonSettings: _*)
           |    .settings(
           |      libraryDependencies ++= Seq(
           |        "com.thesamet.scalapb" %% "scalapb-runtime" % scalapb.compiler.Version.scalapbVersion % "protobuf",
           |      ),
           |    )
           |
           |lazy val service =
           |  project
           |    .dependsOn(protos)
           |    .enablePlugins(AkkaGrpcPlugin)
           |""".stripMargin
    )

  def mainFile: WritableFile =
    StringWritableFile(
      "./service/src/main/scala/Service.scala",
      s"""import io.cloudstate.javasupport.CloudState
         |
         |object Service extends App {
         |    new CloudState()
         |        .registerEventSourcedEntity(
         |            $entityClassName.class,
         |            $entityClassName.getDescriptor().findServiceByName("$entityClassName")
         |        )
         |        .start()
         |}
         |""".stripMargin
    )

  def entityFile: WritableFile =
    StringWritableFile(
      s"./service/src/main/scala/$entityClassName.scala",
      raw"""import io.cloudstate.javasupport._
           |
           |@EventSourcedEntity(persistenceId = $entityClassName, snapshotEvery = 20)
           |class $entityClassName(val @EntityId entityId: String) {
           |
           |    private var state: ${entity.stateType.get.reference}
           |
           |    ${entity.commandHandlers.map(commandHandlerMethod).mkString("\n\n")}
           |
           |    ${entity.eventHandlers.map(eventHandlerMethod).mkString("\n\n")}
           |
           |    $snapshotMethod
           |
           |    $handleSnapshotMethod
           |
           |}
           |""".stripMargin
    )

  def commandHandlerMethod(commandHandler: EventSourcedEntity.CommandHandler): String =
    raw"""@CommandHandler
         |def ${commandHandler.commandType.get.className(project).toVariableName}(command: ${commandHandler.commandType.get.className(project)}, ctx: CommandContext): ${commandHandler.responseType.get.className(project)} = {
         |  ${commandHandler.codeBlocks("body")}
         |}""".stripMargin

  def eventHandlerMethod(eventHandler: EventSourcedEntity.EventHandler): String =
    raw"""@EventHandler
         |def ${eventHandler.eventType.get.className(project).toVariableName}(event: ${eventHandler.eventType.get.className(project)}, ctx: CommandContext): Unit = {
         |  ${eventHandler.codeBlocks("body")}
         |}""".stripMargin

  def snapshotMethod: String =
    raw"""@Snapshot
         |def snapshot(): $stateClassPath {
         |   this.state
         |}""".stripMargin

  def handleSnapshotMethod: String =
    raw"""@SnapshotHandler
         |def handleSnapshot(snapshot: $stateClassPath): Unit {
         |   this.state = snapshot
         |}""".stripMargin

  def serviceProtoFile: WritableFile = ???

  def entityClassName: String =
    entity.name + "Entity"

  def stateClassPath: String =
    entity.stateType.get.classPath(project)

}

object ScalaEventSourcedEntityAssembler {
  final val dockerfile =
    StringWritableFile(
      "./Dockerfile",
      """FROM adoptopenjdk:11-jre-hotspot
        |
        |RUN echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
        |RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add
        |RUN sudo apt-get update && sudo apt-get install sbt
        |
        |COPY . /tmp/build
        |
        |WORKDIR /tmp/build
        |RUN sbt service/release
        |RUN mv /tmp/build/service/target/scala-2.12/app.jar /opt/app/app.jar
        |RUN rm -rf /tmp/build
        |RUN sudo apt-get remove sbt
        |
        |WORKDIR /opt/app
        |
        |CMD ["java", "-jar", "/opt/app/app.jar"]
        |""".stripMargin
    )
}
