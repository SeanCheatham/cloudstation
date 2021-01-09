package cloudstation.assembler

import akka.NotUsed
import akka.stream.scaladsl.{Merge, Source}
import akka.util.ByteString
import cloudstation.assembler.scala.ScalaActionAssembler
import cloudstation.project.{EntityConfiguration, Project}

case class ProjectAssembler(project: Project, version: String) {
  def writableProjects: Source[WritableProject, NotUsed] =
    Source.combine(
      writableEventSourcedEntityProjects,
      writableReplicatedEntityProjects,
      writableActionProjects
    )(Merge(_))

  def writableEventSourcedEntityProjects: Source[WritableProject, NotUsed] = ???

  def writableReplicatedEntityProjects: Source[WritableProject, NotUsed] = ???

  def writableActionProjects: Source[WritableProject, NotUsed] =
    Source(project.actions.toList)
      .map(action =>
        action.entityConfiguration.fold[EntityConfiguration.Language](EntityConfiguration.Language.SCALA)(_.language) match {
          case EntityConfiguration.Language.SCALA =>
            ScalaActionAssembler(project, action).writableProject
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