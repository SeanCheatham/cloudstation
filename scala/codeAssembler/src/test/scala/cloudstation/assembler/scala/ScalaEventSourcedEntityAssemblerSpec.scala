package cloudstation.assembler.scala

import cloudstation.assembler.StringWritableFile
import cloudstation.project.{Model, _}
import org.scalatest.flatspec.AnyFlatSpec
import org.scalatest.matchers.should.Matchers

class ScalaEventSourcedEntityAssemblerSpec extends AnyFlatSpec with Matchers {

  behavior of "ScalaEventSourcedEntityAssembler"

  private val projectId =
    "projectId"

  private val models =
    List(
      Model(
        "TestState",
        List(
          Model.Property("testStateProperty", Some(TypeReference(TypeReference.Reference.Static(TypeReference.Static(StaticType.STRING)))))
        )
      ),
      Model("TestCommand"),
        Model("TestResponse")
    )

  private val eventSourcedEntities =
    List(
      EventSourcedEntity("TestEventSourcedEntity")
        .withStateType(TypeReference().withModel(TypeReference.Model("TestState")))
        .withCommandHandlers(
          List(
            EventSourcedEntity.CommandHandler()
              .withCommandType(TypeReference().withModel(TypeReference.Model("TestCommand")))
              .withResponseType(TypeReference().withModel(TypeReference.Model("TestResponse")))
              .addCodeBlocks("body" -> "TestResponse()")
          )
        )
      )

  private val project =
    Project(
      projectId = projectId,
      models = models,
      eventSourcedEntities = eventSourcedEntities
    )

  private val assembler =
    ScalaEventSourcedEntityAssembler(project, "v1", eventSourcedEntities.head)

  it should "produce an entity class file" in {
      val file = assembler.entityFile.asInstanceOf[StringWritableFile]

    file.relativePath shouldBe s"./service/src/main/scala/TestEventSourcedEntity.scala"
    file.value should include("""@EventSourcedEntity(persistenceId = "TestEventSourcedEntity", snapshotEvery = 20)""")
  }

}
