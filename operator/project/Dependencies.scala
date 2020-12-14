import sbt._

object Dependencies {
  object freya {
    val core = "io.github.novakov-alexey" %% "freya-core" % "0.2.10"
    val circeSupport = "io.github.novakov-alexey" %% "freya-circe" % "0.2.10"
  }

  val circe = "io.circe" %% "circe-generic" % "0.13.0"

  val logging: ModuleID =
    "ch.qos.logback" % "logback-classic" % "1.2.3"

  val scalaTest: ModuleID =
    "org.scalatest" %% "scalatest" % "3.2.0" % "test"
}