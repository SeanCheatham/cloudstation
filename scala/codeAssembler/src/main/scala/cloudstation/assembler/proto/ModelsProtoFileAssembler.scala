package cloudstation.assembler.proto

import cloudstation.assembler.StringWritableFile
import cloudstation.assembler.proto.ops.implicits.{asStringHelper, asTypeReferenceHelper}
import cloudstation.project.{Model, Project}

case class ModelsProtoFileAssembler(relativePath: String, project: Project) {

  def modelsProtoFile: StringWritableFile =
    StringWritableFile(
      relativePath,
      raw"""syntax = "proto3";
           |
           |package ${project.projectConfiguration.get.basePackage}.models;
           |option java_package = "${project.projectConfiguration.get.basePackage}.models";
           |
           |${project.models.map(modelToMessage).mkString("\n\n")}
           |""".stripMargin
    )

  def modelToMessage(model: Model): String =
    raw"""message ${model.name.toModelName}{
         |   ${model.properties.zipWithIndex.map((propertyLine _).tupled).map(_.indent).mkString("\n")}
         |}""".stripMargin

  def propertyLine(property: Model.Property, index: Int): String =
    raw"${property.typeReference.get.toProtoReference} ${property.name.toVariableName} = $index"
}
