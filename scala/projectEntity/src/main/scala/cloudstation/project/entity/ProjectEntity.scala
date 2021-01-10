package cloudstation.project.entity

import cloudstation.project._
import io.cloudstate.javasupport._
import io.cloudstate.javasupport.eventsourced.{CommandContext, CommandHandler, EventHandler, EventSourcedEntity => CEventSourcedEntity}

@CEventSourcedEntity(persistenceId = "cloudstation-project")
class ProjectEntity(@EntityId val entityId: String) {
  private var state: Project =
    Project().withProjectId(entityId)

  @CommandHandler
  def getProjectCommand(command: GetProjectCommand, ctx: CommandContext): GetProjectResponse =
    GetProjectResponse().withProject(state)

  @CommandHandler
  def addModelCommand(command: AddModelCommand, ctx: CommandContext): AddModelResponse = {
    command.model match {
      case Some(model) =>
        if (state.models.exists(_.name == model.name))
          ctx.fail("Duplicate model name")
        else
          ctx.emit(
            ModelAddedEvent().withModel(model)
          )
      case None =>
        ctx.emit(ModelAddedEvent())
    }
    AddModelResponse()
  }

  @EventHandler
  def modelAddedEvent(event: ModelAddedEvent): Unit = {
    val hydratedModel = event.model.getOrElse(Model.defaultInstance)
    state = state.addModels(hydratedModel)
  }

  @CommandHandler
  def updateModelCommand(command: UpdateModelCommand, ctx: CommandContext): UpdateModelResponse = {
    command.updatedModel match {
      case Some(model) =>
        if (command.getUpdatedModel.name != command.originalName && state.models.exists(_.name == model.name))
          ctx.fail("Duplicate model name")
        else
          ctx.emit(
            ModelUpdatedEvent()
              .withOriginalName(command.originalName)
              .withUpdatedModel(model)
          )
      case None =>
        ctx.emit(ModelAddedEvent())
    }
    UpdateModelResponse()
  }

  @EventHandler
  def modelUpdatedEvent(event: ModelUpdatedEvent): Unit = {
    val hydratedModel = event.updatedModel.getOrElse(Model.defaultInstance)
    state = state.withModels(state.models.filterNot(_.name == event.originalName) :+ hydratedModel)
  }

  @CommandHandler
  def removeModelCommand(command: RemoveModelCommand, ctx: CommandContext): RemoveModelResponse = {
    if (!state.models.exists(_.name == command.name))
      ctx.fail("Model does not exist")
    else
      ctx.emit(
        ModelRemovedEvent().withName(command.name)
      )
    RemoveModelResponse()
  }

  @EventHandler
  def modelRemovedEvent(event: ModelRemovedEvent): Unit = {
    state = state.withModels(state.models.filterNot(_.name == event.name))
  }

  @CommandHandler
  def addEventSourcedEntityCommand(command: AddEventSourcedEntityCommand, ctx: CommandContext): AddEventSourcedEntityResponse = {
    command.entity match {
      case Some(eventSourcedEntity) =>
        if (state.eventSourcedEntities.exists(_.name == eventSourcedEntity.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            EventSourcedEntityAddedEvent().withEntity(eventSourcedEntity)
          )
      case None =>
        ctx.emit(EventSourcedEntityAddedEvent())
    }
    AddEventSourcedEntityResponse()
  }

  @EventHandler
  def eventSourcedEntityAddedEvent(event: EventSourcedEntityAddedEvent): Unit = {
    val hydratedEventSourcedEntity = event.entity.getOrElse(EventSourcedEntity.defaultInstance)
    state = state.addEventSourcedEntities(hydratedEventSourcedEntity)
  }

  @CommandHandler
  def updateEventSourcedEntityCommand(command: UpdateEventSourcedEntityCommand, ctx: CommandContext): UpdateEventSourcedEntityResponse = {
    command.entity match {
      case Some(eventSourcedEntity) =>
        if (command.getEntity.name != command.originalName && state.eventSourcedEntities.exists(_.name == eventSourcedEntity.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            EventSourcedEntityUpdatedEvent()
              .withOriginalName(command.originalName)
              .withEntity(eventSourcedEntity)
          )
      case None =>
        ctx.emit(EventSourcedEntityAddedEvent())
    }
    UpdateEventSourcedEntityResponse()
  }

  @EventHandler
  def eventSourcedEntityUpdatedEvent(event: EventSourcedEntityUpdatedEvent): Unit = {
    val hydratedEventSourcedEntity = event.entity.getOrElse(EventSourcedEntity.defaultInstance)
    state = state.withEventSourcedEntities(state.eventSourcedEntities.filterNot(_.name == event.originalName) :+ hydratedEventSourcedEntity)
  }

  @CommandHandler
  def removeEventSourcedEntityCommand(command: RemoveEventSourcedEntityCommand, ctx: CommandContext): RemoveEventSourcedEntityResponse = {
    if (!state.eventSourcedEntities.exists(_.name == command.name))
      ctx.fail("Entity does not exist")
    else
      ctx.emit(
        EventSourcedEntityRemovedEvent().withName(command.name)
      )
    RemoveEventSourcedEntityResponse()
  }

  @EventHandler
  def eventSourcedEntityRemovedEvent(event: EventSourcedEntityRemovedEvent): Unit = {
    state = state.withEventSourcedEntities(state.eventSourcedEntities.filterNot(_.name == event.name))
  }

  @CommandHandler
  def addReplicatedEntityCommand(command: AddReplicatedEntityCommand, ctx: CommandContext): AddReplicatedEntityResponse = {
    command.entity match {
      case Some(replicatedEntity) =>
        if (state.replicatedEntities.exists(_.name == replicatedEntity.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            ReplicatedEntityAddedEvent().withEntity(replicatedEntity)
          )
      case None =>
        ctx.emit(ReplicatedEntityAddedEvent())
    }
    AddReplicatedEntityResponse()
  }

  @EventHandler
  def replicatedEntityAddedEvent(event: ReplicatedEntityAddedEvent): Unit = {
    val hydratedReplicatedEntity = event.entity.getOrElse(ReplicatedEntity.defaultInstance)
    state = state.addReplicatedEntities(hydratedReplicatedEntity)
  }

  @CommandHandler
  def updateReplicatedEntityCommand(command: UpdateReplicatedEntityCommand, ctx: CommandContext): UpdateReplicatedEntityResponse = {
    command.entity match {
      case Some(replicatedEntity) =>
        if (command.getEntity.name != command.originalName && state.replicatedEntities.exists(_.name == replicatedEntity.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            ReplicatedEntityUpdatedEvent()
              .withOriginalName(command.originalName)
              .withEntity(replicatedEntity)
          )
      case None =>
        ctx.emit(ReplicatedEntityAddedEvent())
    }
    UpdateReplicatedEntityResponse()
  }

  @EventHandler
  def replicatedEntityUpdatedEvent(event: ReplicatedEntityUpdatedEvent): Unit = {
    val hydratedReplicatedEntity = event.entity.getOrElse(ReplicatedEntity.defaultInstance)
    state = state.withReplicatedEntities(state.replicatedEntities.filterNot(_.name == event.originalName) :+ hydratedReplicatedEntity)
  }

  @CommandHandler
  def removeReplicatedEntityCommand(command: RemoveReplicatedEntityCommand, ctx: CommandContext): RemoveReplicatedEntityResponse = {
    if (!state.replicatedEntities.exists(_.name == command.name))
      ctx.fail("Entity does not exist")
    else
      ctx.emit(
        ReplicatedEntityRemovedEvent().withName(command.name)
      )
    RemoveReplicatedEntityResponse()
  }

  @EventHandler
  def replicatedEntityRemovedEvent(event: ReplicatedEntityRemovedEvent): Unit = {
    state = state.withReplicatedEntities(state.replicatedEntities.filterNot(_.name == event.name))
  }

  @CommandHandler
  def addActionCommand(command: AddActionCommand, ctx: CommandContext): AddActionResponse = {
    command.action match {
      case Some(action) =>
        if (state.replicatedEntities.exists(_.name == action.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            ActionAddedEvent().withAction(action)
          )
      case None =>
        ctx.emit(ActionAddedEvent())
    }
    AddActionResponse()
  }

  @EventHandler
  def actionAddedEvent(event: ActionAddedEvent): Unit = {
    val hydratedAction = event.getAction
    state = state.addActions(hydratedAction)
  }

  @CommandHandler
  def updateActionCommand(command: UpdateActionCommand, ctx: CommandContext): UpdateActionResponse = {
    command.action match {
      case Some(action) =>
        if (command.getAction.name != command.originalName && state.replicatedEntities.exists(_.name == action.name))
          ctx.fail("Duplicate entity name")
        else
          ctx.emit(
            ActionUpdatedEvent()
              .withOriginalName(command.originalName)
              .withAction(action)
          )
      case None =>
        ctx.emit(ActionAddedEvent())
    }
    UpdateActionResponse()
  }

  @EventHandler
  def actionUpdatedEvent(event: ActionUpdatedEvent): Unit = {
    val hydratedAction = event.getAction
    state = state.withActions(state.actions.filterNot(_.name == event.originalName) :+ hydratedAction)
  }

  @CommandHandler
  def removeActionCommand(command: RemoveActionCommand, ctx: CommandContext): RemoveActionResponse = {
    if (!state.actions.exists(_.name == command.name))
      ctx.fail("Entity does not exist")
    else
      ctx.emit(
        ActionRemovedEvent().withName(command.name)
      )
    RemoveActionResponse()
  }

  @EventHandler
  def actionRemovedEvent(event: ActionRemovedEvent): Unit = {
    state = state.withActions(state.actions.filterNot(_.name == event.name))
  }
  
}
