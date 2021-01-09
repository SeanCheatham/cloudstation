package cloudstation.assembler.scala

import akka.stream.scaladsl.Source
import cloudstation.assembler.proto.ModelsProtoFileAssembler
import cloudstation.assembler.{EntityAssembler, StringWritableFile, WritableFile, WritableProject}

trait ScalaEntityAssembler extends EntityAssembler {

  def writableProject: WritableProject =
    WritableProject(
      Source(
        List(
          buildPropertiesFile,
          pluginsSbtFile,
          dockerfileFile,
          buildSbtFile,
          mainFile,
          entityFile,
          modelsProtoFile,
          serviceProtoFile,
        )
      )
    )

  def buildPropertiesFile: WritableFile =
    StringWritableFile(
      "./project/build.properties",
      """sbt.version = 1.4.3
        |""".stripMargin
    )

  def pluginsSbtFile: WritableFile =
    StringWritableFile(
      "./project/plugins.sbt",
      """addSbtPlugin("com.typesafe.sbt" % "sbt-native-packager" % "1.7.5")
        |""".stripMargin
    )

  def dockerfileFile: WritableFile

  def buildSbtFile: WritableFile

  def mainFile: WritableFile

  def entityFile: WritableFile

  def modelsProtoFile: WritableFile =
    ModelsProtoFileAssembler("./protos/src/main/protos/models.proto", project)

  def serviceProtoFile: WritableFile
}
