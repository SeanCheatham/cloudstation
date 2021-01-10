import sbt.Keys.scalaVersion

name := "cloudstation-backend"

lazy val root =
  Project(id = "root", base = file("."))
    .settings(
      name := "root",
      skip in publish := true,
    )
    .withId("root")
    .settings(commonSettings)
    .aggregate(
      protos,
      codeAssembler,
      projectEntity,
    )

val commonSettings =
  Seq(
    version := "0.1",
    scalaVersion := "2.13.3",
    libraryDependencies ++= Seq(Dependencies.logging),
    libraryDependencies ++= Seq(Dependencies.scalaTest),
  )

lazy val protos =
  project
    .enablePlugins(AkkaGrpcPlugin)
    .settings(commonSettings: _*)
    .settings(
      libraryDependencies ++= Seq(
        "com.thesamet.scalapb" %% "scalapb-runtime" % scalapb.compiler.Version.scalapbVersion % "protobuf",
      ),
      PB.protoSources in Compile ++= Seq(
        file("../protocols/project")
      ),
    )

lazy val codeAssembler =
  project
    .dependsOn(protos)
    .enablePlugins(AkkaGrpcPlugin)
    .settings(commonSettings: _*)

lazy val projectEntity =
  project
    .dependsOn(protos, codeAssembler)
    .enablePlugins(AkkaGrpcPlugin)
    .settings(commonSettings: _*)
    .settings(
      libraryDependencies ++= Seq(
        Dependencies.cloudState
      )
    )
