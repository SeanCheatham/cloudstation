import 'package:cloudstation/modules/project/ui/app_bar.dart';

import './project_bloc.dart';
import '../../models/domain_support.dart';
import '../../models/project_state.dart';
import './ui/event_sourced_entities_page.dart';
import './ui/models_page.dart';
import './ui/actions_page.dart';
import './ui/replicated_entities_page.dart';
import './ui/project_page_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:convert';
import 'package:cloudstation_protocols/generated/project.pb.dart' as p;

class ProjectsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProjectBlocs()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          "/:projectId",
          child: _modelsRoute,
        ),
        ModularRouter(
          "/:projectId/models",
          child: _modelsRoute,
        ),
        ModularRouter(
          "/:projectId/models/:modelName",
          child: _modelsRoute,
        ),
        ModularRouter(
          "/:projectId/event-sourced-entities",
          child: _eventSourcedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/event-sourced-entities/:entityName",
          child: _eventSourcedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/event-sourced-entities/:entityName/commands/:selectedCommandHandler",
          child: _eventSourcedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/event-sourced-entities/:entityName/events/:selectedEventHandler",
          child: _eventSourcedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/replicated-entities",
          child: _replicatedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/replicated-entities/:entityName",
          child: _replicatedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/replicated-entities/:entityName/commands/:selectedCommandHandler",
          child: _replicatedEntitiesRoute,
        ),
        ModularRouter(
          "/:projectId/actions",
          child: _actionsRoute,
        ),
        ModularRouter(
          "/:projectId/actions/:entityName",
          child: _actionsRoute,
        ),
      ];

  Widget _modelsRoute(BuildContext context, ModularArguments args) =>
      _withProjectBloc(
          context,
          args,
          (context, state, addEventF) => _withScaffold(
                state,
                addEventF,
                ProjectPageId.models,
                ModelsPage(
                  key: UniqueKey(),
                  state: state,
                  addEvent: addEventF,
                  selectedModelName: args.params["modelName"],
                ),
              ));

  Widget _eventSourcedEntitiesRoute(
          BuildContext context, ModularArguments args) =>
      _withProjectBloc(
          context,
          args,
          (context, state, addEventF) => _withScaffold(
              state,
              addEventF,
              ProjectPageId.eventSourcedEntities,
              EventSourcedEntitiesPage(
                key: UniqueKey(),
                state: state,
                addEvent: addEventF,
                selectedEntityName: args.params["entityName"],
                selectedCommandHandler:
                    args.params.containsKey("selectedCommandHandler")
                        ? deserializeTypeReference(
                            args.params["selectedCommandHandler"])
                        : null,
                selectedEventHandler:
                    args.params.containsKey("selectedEventHandler")
                        ? deserializeTypeReference(
                            args.params["selectedEventHandler"])
                        : null,
              )));

  Widget _replicatedEntitiesRoute(
          BuildContext context, ModularArguments args) =>
      _withProjectBloc(
          context,
          args,
          (context, state, addEventF) => _withScaffold(
              state,
              addEventF,
              ProjectPageId.replicatedEntities,
              ReplicatedEntitiesPage(
                key: UniqueKey(),
                state: state,
                addEvent: addEventF,
                selectedEntityName: args.params["entityName"],
                selectedCommandHandler:
                    args.params.containsKey("selectedCommandHandler")
                        ? deserializeTypeReference(
                            args.params["selectedCommandHandler"])
                        : null,
              )));

  Widget _actionsRoute(
          BuildContext context, ModularArguments args) =>
      _withProjectBloc(
          context,
          args,
          (context, state, addEventF) => _withScaffold(
              state,
              addEventF,
              ProjectPageId.actions,
              ActionsPage(
                key: UniqueKey(),
                state: state,
                addEvent: addEventF,
                selectedEntityName: args.params["entityName"],
              )));

  Widget _withScaffold(ProjectState state, Function(dynamic) addEvent,
      ProjectPageId projectPageId, Widget body) {
    final projectId = state.project.projectId;
    final void Function(ProjectPageId) onPageSelected =
        (ProjectPageId targetPageId) {
      switch (targetPageId) {
        case ProjectPageId.models:
          Modular.to.popAndPushNamed("/projects/$projectId/models");
          break;
        case ProjectPageId.eventSourcedEntities:
          Modular.to
              .popAndPushNamed("/projects/$projectId/event-sourced-entities");
          break;
        case ProjectPageId.replicatedEntities:
          Modular.to
              .popAndPushNamed("/projects/$projectId/replicated-entities");
          break;
        case ProjectPageId.actions:
          Modular.to.popAndPushNamed("/projects/$projectId/actions");
          break;
      }
    };

    String title;
    switch (projectPageId) {
      case ProjectPageId.models:
        title = "Models";
        break;
      case ProjectPageId.eventSourcedEntities:
        title = "Event Sourced Entities";
        break;
      case ProjectPageId.replicatedEntities:
        title = "Replicated Entities";
        break;
      case ProjectPageId.actions:
        title = "Actions";
        break;
    }
    return Scaffold(
        drawer: ProjectPageDrawer(
            projectPageId: projectPageId, pageSelected: onPageSelected),
        appBar: ProjectAppBar(
          state: state,
          addEvent: addEvent,
          title: title,
        ).widget,
        body: body);
  }

  Widget _withProjectBloc(
          BuildContext context,
          ModularArguments args,
          Widget Function(BuildContext, ProjectState, Function(dynamic))
              pageBuilder) =>
      BlocProvider.value(
        value: Modular.get<ProjectBlocs>()
            .fetch(context, args.params["projectId"]),
        child: BlocBuilder<ProjectBloc, ProjectState>(
          builder: (context, state) =>
              pageBuilder(context, state, context.watch<ProjectBloc>().add),
        ),
      );
}

class ProjectBlocs extends Disposable {
  Map<String, ProjectBloc> _blocs = {};

  ProjectBloc fetch(BuildContext context, String projectId) =>
      _blocs.putIfAbsent(projectId, () {
        final bloc = ProjectBloc.fromProjectId(projectId);
        if (projectId == "test") {
          importTestEvents(context, bloc);
        }
        return bloc;
      });

  void destroy(projectId) {
    if (_blocs.containsKey(projectId)) {
      final _bloc = _blocs[projectId];
      _bloc.close();
      _blocs.remove(projectId);
    }
  }

  @override
  void dispose() {
    _blocs.forEach((key, value) {
      value.close();
      _blocs.remove(key);
    });
  }
}

Future<void> importTestEvents(
    BuildContext context, ProjectBloc projectBloc) async {
  final eventsArray = await (DefaultAssetBundle.of(context).loadStructuredData(
      "assets/mockProjectEvents.json",
      (value) => Future.value(jsonDecode(value)))) as List<dynamic>;
  for (Map<String, dynamic> eventJson in eventsArray) {
    final eventType = eventJson["@type"];
    eventJson.remove("@type");
    var event;
    switch (eventType) {
      case "cloudstation.project.ModelAddedEvent":
        event = p.ModelAddedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ModelUpdatedEvent":
        event = p.ModelUpdatedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ModelRemovedEvent":
        event = p.ModelRemovedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.EventSourcedEntityAddedEvent":
        event = p.EventSourcedEntityAddedEvent()
          ..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.EventSourcedEntityUpdatedEvent":
        event = p.EventSourcedEntityUpdatedEvent()
          ..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.EventSourcedEntityRemovedEvent":
        event = p.EventSourcedEntityRemovedEvent()
          ..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ReplicatedEntityAddedEvent":
        event = p.ReplicatedEntityAddedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ReplicatedEntityUpdatedEvent":
        event = p.ReplicatedEntityUpdatedEvent()
          ..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ReplicatedEntityRemovedEvent":
        event = p.ReplicatedEntityRemovedEvent()
          ..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ActionAddedEvent":
        event = p.ActionAddedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ActionUpdatedEvent":
        event = p.ActionUpdatedEvent()..mergeFromProto3Json(eventJson);
        break;
      case "cloudstation.project.ActionRemovedEvent":
        event = p.ActionRemovedEvent()..mergeFromProto3Json(eventJson);
        break;
    }
    if (event != null) projectBloc.add(event);
  }
}
