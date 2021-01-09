import sbt._

object Dependencies {

  val logging: ModuleID = "ch.qos.logback" % "logback-classic" % "1.2.3"

  val scalaTest: ModuleID =
    "org.scalatest" %% "scalatest" % "3.2.0" % "test"

  val AkkaVersion = "2.6.9"

  def akkaModule(name: String): ModuleID =
    "com.typesafe.akka" %% s"akka-$name" % AkkaVersion

  val cloudState = "io.cloudstate" % "cloudstate-java-support" % "0.5.2"
}
