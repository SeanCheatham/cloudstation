package cloudstation.assembler.sbtscala

import akka.stream.scaladsl.Source
import cloudstation.assembler.proto.ModelsProtoFileAssembler
import cloudstation.assembler.{EntityAssembler, StringWritableFile, WritableFile, WritableProject}
import cloudstation.project.FrameworkConfiguration

trait ScalaEntityAssembler extends EntityAssembler {

  def name: String

  def scalaFrameworkConfiguration: FrameworkConfiguration.SbtScala

  def serviceProtoFile: WritableFile

  def mainFile: WritableFile

  def entityFile: WritableFile

  def writableProject: WritableProject =
    WritableProject(
      name,
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

  def dockerfileFile: WritableFile =
    ScalaEntityAssembler.dockerfile

  def buildSbtFile: WritableFile =
    StringWritableFile(
      "./build.sbt",
      raw"""name := "cloudstation-user-project"
           |version := "$version"
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
           |    .settings(
           |      libraryDependencies ++= Seq(
           |        ${scalaFrameworkConfiguration.sbtDependencies.map(d => s""""${d.organization}" % "${d.name} %${if (d.isScala) "%" else ""} "${d.version}"""").mkString(",\n")}
           |      )
           |    )
           |""".stripMargin
    )

  def modelsProtoFile: WritableFile =
    ModelsProtoFileAssembler("./protos/src/main/protos/models.proto", project).modelsProtoFile
}

object ScalaEntityAssembler {
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
