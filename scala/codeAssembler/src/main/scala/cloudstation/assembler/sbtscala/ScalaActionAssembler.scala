package cloudstation.assembler.sbtscala

import cloudstation.assembler.proto.ActionServiceProtoFileAssembler
import cloudstation.assembler.{StringWritableFile, WritableFile}
import cloudstation.project.{Action, FrameworkConfiguration, Project}

case class ScalaActionAssembler(project: Project, version: String, action: Action) extends ScalaEntityAssembler {

  def name: String = action.name

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
      s"""${???}
         |""".stripMargin
    )

  def serviceProtoFile: WritableFile =
    ActionServiceProtoFileAssembler(project, action)
      .serviceProtoFile("./protos/src/main/protos/service.proto")

  def entityClassName: String =
    action.name

  def scalaFrameworkConfiguration: FrameworkConfiguration.SbtScala =
    action.frameworkConfiguration.fold(FrameworkConfiguration.SbtScala.defaultInstance)(_.getSbtScala)
}
