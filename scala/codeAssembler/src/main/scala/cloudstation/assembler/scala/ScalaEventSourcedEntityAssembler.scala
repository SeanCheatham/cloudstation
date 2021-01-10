package cloudstation.assembler.scala

import cloudstation.assembler.proto.EventSourcedEntityServiceProtoFileAssembler
import cloudstation.assembler.scala.ops.implicits.{asStringHelper, asTypeReferenceHelper}
import cloudstation.assembler.{StringWritableFile, WritableFile}
import cloudstation.project.{EventSourcedEntity, FrameworkConfiguration, Project}

case class ScalaEventSourcedEntityAssembler(project: Project, version: String, entity: EventSourcedEntity) extends ScalaEntityAssembler {

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
           |@EventSourcedEntity(persistenceId = "$entityClassName", snapshotEvery = 20)
           |class $entityClassName(val @EntityId entityId: String) {
           |
           |    private var state: ${entity.stateType.get.className(project)}
           |
           |    ${entity.commandHandlers.map(commandHandlerMethod).mkString("\n\n")}
           |    ${entity.eventHandlers.map(eventHandlerMethod).mkString("\n\n")}
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
         |def snapshot(): $stateClassName = {
         |   this.state
         |}""".stripMargin

  def handleSnapshotMethod: String =
    raw"""@SnapshotHandler
         |def handleSnapshot(snapshot: $stateClassName): Unit = {
         |   this.state = snapshot
         |}""".stripMargin

  def serviceProtoFile: WritableFile =
    EventSourcedEntityServiceProtoFileAssembler(project, entity)
      .serviceProtoFile("./protos/src/main/protos/service.proto")

  def entityClassName: String =
    entity.name.toClassName

  def stateClassName: String =
    entity.stateType.get.className(project)

  def scalaFrameworkConfiguration: FrameworkConfiguration.SbtScala =
    entity.frameworkConfiguration.fold(FrameworkConfiguration.SbtScala.defaultInstance)(_.getSbtScala)
}
