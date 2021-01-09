package cloudstation.assembler.scala

import cloudstation.assembler.{StringWritableFile, WritableFile}
import cloudstation.project.{Action, Project}

case class ScalaActionAssembler(project: Project, version: String, action: Action) extends ScalaEntityAssembler {

  def dockerfileFile: WritableFile =
    StringWritableFile(
      "./Dockerfile",
      """
        |
        |""".stripMargin
    )

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
      s"""
         |""".stripMargin
    )

  def serviceProtoFile: WritableFile = ???

  def entityClassName: String =
    action.name + "Entity"
}
