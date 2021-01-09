package cloudstation.assembler.proto

import cloudstation.assembler.proto.ops.implicits.{asStringHelper, asTypeReferenceHelper}
import cloudstation.assembler.{StringWritableFile, WritableFile}
import cloudstation.project.{Action, EventSourcedEntity, Project, ReplicatedEntity}

trait ServiceProtoFileAssembler {

  def project: Project

  def serviceProtoFile(relativePath: String): WritableFile

}

case class EventSourcedEntityServiceProtoFileAssembler(project: Project,
                                                       entity: EventSourcedEntity) extends ServiceProtoFileAssembler {

  override def serviceProtoFile(relativePath: String): WritableFile =
    StringWritableFile(
      relativePath,
      raw"""syntax = "proto3";
           |
           |package ${project.projectConfiguration.get.basePackage}.models;
           |option java_package = "${project.projectConfiguration.get.basePackage}.models";
           |
           |import "models.proto";
           |
           |service ${entity.name.toServiceName} {
           |
           |    ${entity.commandHandlers.map(commandHandlerRpc).map(_.indent).mkString("\n")}
           |
           |}
           |
           |""".stripMargin
    )

  def commandHandlerRpc(commandHandler: EventSourcedEntity.CommandHandler): String =
    raw"""rpc ${commandHandler.commandType.get.toProtoReference}Handler(${commandHandler.commandType.get.toProtoReference}) returns ${commandHandler.responseType.get.toProtoReference};""".stripMargin

}

case class ReplicatedEntityServiceProtoFileAssembler(project: Project,
                                                     entity: ReplicatedEntity) extends ServiceProtoFileAssembler {

  override def serviceProtoFile(relativePath: String): WritableFile =
    StringWritableFile(
      relativePath,
      raw"""syntax = "proto3";
           |
           |package ${project.projectConfiguration.get.basePackage}.models;
           |option java_package = "${project.projectConfiguration.get.basePackage}.models";
           |
           |import "models.proto";
           |
           |service ${entity.name.toServiceName} {
           |
           |    ${entity.commandHandlers.map(commandHandlerRpc).map(_.indent).mkString("\n")}
           |
           |}
           |
           |""".stripMargin
    )

  def commandHandlerRpc(commandHandler: ReplicatedEntity.CommandHandler): String =
    raw"""rpc ${commandHandler.commandType.get.toProtoReference}Handler(${commandHandler.commandType.get.toProtoReference}) returns ${commandHandler.responseType.get.toProtoReference};""".stripMargin

}

case class ActionServiceProtoFileAssembler(project: Project,
                                           entity: Action) extends ServiceProtoFileAssembler {

  override def serviceProtoFile(relativePath: String): WritableFile =
    StringWritableFile(
      relativePath,
      raw"""syntax = "proto3";
           |
           |package ${project.projectConfiguration.get.basePackage}.models;
           |option java_package = "${project.projectConfiguration.get.basePackage}.models";
           |
           |import "models.proto";
           |
           |service ${entity.name.toServiceName} {
           |
           |    rpc ${entity.commandType.get.toProtoReference}Handler(${entity.commandType.get.toProtoReference}) returns ${entity.responseType.get.toProtoReference};
           |
           |}
           |
           |""".stripMargin
    )
}
