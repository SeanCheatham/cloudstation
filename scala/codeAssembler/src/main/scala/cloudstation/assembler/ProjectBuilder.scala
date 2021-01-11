package cloudstation.assembler

import akka.NotUsed
import akka.actor.ActorSystem
import akka.stream.scaladsl.{FileIO, Flow, Sink, Source}
import cloudstation.project.{BuildSet, Project}

import java.nio.file.{Files, Path, Paths}
import scala.concurrent.Future

class ProjectBuilder(project: Project,
                     version: String,
                     writableProjects: Source[WritableProject, _])(implicit system: ActorSystem) {

  import system.dispatcher

  type ImageTag = String

  def buildAndPublish(): Future[BuildSet] =
    writableProjects
      .via(buildAndPublishFlow)
      .runFold(BuildSet())(_.addEntries(_))

  val buildAndPublishFlow: Flow[WritableProject, BuildSet.Entry, NotUsed] =
    Flow[WritableProject].mapAsync(1)(writableProject =>
      writeToDisk(writableProject).flatMap(dir =>
        buildAndPush(dir, writableProject)
          .map(tag =>
            BuildSet.Entry()
              .withEntityName(writableProject.name)
              .withImageTag(tag)
          )
      )
    )

  def writeToDisk(writableProject: WritableProject): Future[Path] = {
    val baseDirectory =
      Files.createTempDirectory(s"${project.projectId}-${writableProject.name}-$version-")

    writableProject
      .files
      .mapAsync(1)(f => f.data.runWith(FileIO.toPath(Paths.get(baseDirectory.toString, f.relativePath))))
      .runWith(Sink.seq)
      .map(_ => baseDirectory)
  }

  def buildAndPush(directory: Path, writableProject: WritableProject): Future[ImageTag] = {
    val tag = s"${writableProject.name}:$version"
    // TODO: Use IO dispatcher
    Future {
      import sys.process._
      s"cd ${directory.toAbsolutePath} && docker build -t $tag . && docker push ${???}".!
    }(system.dispatcher)
      .map(_ => tag)
  }

}
