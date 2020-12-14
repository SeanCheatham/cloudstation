lazy val root =
  Project(id = "root", base = file("."))
    .settings(
      name := "root",
      skip in publish := true,
    )
    .withId("root")
    .settings(commonSettings)
    .aggregate(
      operator
    )

lazy val operator =
  project
    .settings(commonSettings: _*)
    .settings(
      name := "cloudstation-operator",
      libraryDependencies ++= Seq(
        Dependencies.freya.core,
        Dependencies.freya.circeSupport,
        Dependencies.circe,
      )
    )

val commonSettings =
  Seq(
    scalaVersion := "2.13.3",
    version := "0.1",
    libraryDependencies ++= Seq(Dependencies.logging),
    libraryDependencies ++= Seq(Dependencies.scalaTest),
  )