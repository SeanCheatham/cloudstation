package cloudstation.assembler

import akka.NotUsed
import akka.stream.scaladsl.{Merge, Source}
import akka.util.ByteString
import cloudstation.assembler.scala.{ScalaActionAssembler, ScalaEventSourcedEntityAssembler}
import cloudstation.project.{FrameworkConfiguration, Project}

case class ProjectAssembler(project: Project, version: String) {
  def writableProjects: Source[WritableProject, NotUsed] =
    Source.combine(
      writableEventSourcedEntityProjects,
      writableReplicatedEntityProjects,
      writableActionProjects
    )(Merge(_))

  def writableEventSourcedEntityProjects: Source[WritableProject, NotUsed] =
    Source(project.eventSourcedEntities.toList)
      .map(entity =>
        entity.frameworkConfiguration.get.framework match {
          case _: FrameworkConfiguration.Framework.SbtScala =>
            ScalaEventSourcedEntityAssembler(project, "v1", entity).writableProject
        }
      )

  // TODO
  def writableReplicatedEntityProjects: Source[WritableProject, NotUsed] =
    Source.empty

  def writableActionProjects: Source[WritableProject, NotUsed] =
    Source(project.actions.toList)
      .map(action =>
        action.frameworkConfiguration.get.framework match {
          case _: FrameworkConfiguration.Framework.SbtScala =>
            ScalaActionAssembler(project, "v1", action).writableProject
        }
      )
}

case class WritableProject(files: Source[WritableFile, NotUsed])

abstract class WritableFile {
  def relativePath: String

  def data: Source[ByteString, NotUsed]
}

case class StringWritableFile(relativePath: String, value: String) extends WritableFile {
  override def data: Source[ByteString, NotUsed] = Source.single(ByteString(value))
}
