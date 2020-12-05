import 'package:cloudstation/models/crdt_entity.dart';
import 'package:cloudstation/models/event_sourced_entity.dart';
import 'package:cloudstation/models/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloudstation/models/projects/project_events.dart' as events;
import 'package:cloudstation/models/projects/project_states.dart' as states;

class ProjectBloc extends Bloc<events.ProjectEvent, states.ProjectState> {
  final String projectId;

  ProjectBloc(this.projectId) : super(states.UnloadedProjectState(projectId));

  @override
  Stream<states.ProjectState> mapEventToState(events.ProjectEvent event) =>
      state.mapEventToState(event);
}

final mockLoadProject = events.LoadProject(
  [
    Model(
      "ShoppingCartState",
      [
        ModelProperty("property1", StaticTypeReference(StaticType.string)),
        ModelProperty("property2", StaticTypeReference(StaticType.int32)),
      ],
    ),
    Model(
      "AddCartItemCommand",
      [
        ModelProperty("itemId", StaticTypeReference(StaticType.string)),
        ModelProperty("count", StaticTypeReference(StaticType.int32)),
        ModelProperty("price", StaticTypeReference(StaticType.double)),
      ],
    ),
    Model(
      "CartItemAddedEvent",
      [
        ModelProperty("itemId", StaticTypeReference(StaticType.string)),
        ModelProperty("count", StaticTypeReference(StaticType.int32)),
        ModelProperty("price", StaticTypeReference(StaticType.double)),
      ],
    ),
    Model(
      "AddCartItemResponse",
      [
        ModelProperty("itemId", StaticTypeReference(StaticType.string)),
        ModelProperty("count", StaticTypeReference(StaticType.int32)),
        ModelProperty("price", StaticTypeReference(StaticType.double)),
      ],
    ),
  ],
  [
    EventSourcedEntity(
      "ShoppingCart",
      ModelTypeReference("ShoppingCartState"),
      [
        CommandHandler(
          ModelTypeReference("AddCartItemCommand"),
          ModelTypeReference("AddCartItemResponse"),
          [
            "class AddCartItemCommandHandler {",
            "",
            "  def apply(state: ShoppingCartState, command: AddCartItemCommand): Future[AddCartItemResponse] =",
            "    ???",
            "",
            "}"
          ].join("\n"),
        )
      ],
      [
        EventHandler(
          ModelTypeReference("CartItemAddedEvent"),
          [
            "class CartItemAddedEventHandler {",
            "",
            "  def apply(state: ShoppingCartState, event: CartItemAddedEvent): ShoppingCartState =",
            "    ???",
            "",
            "}"
          ].join("\n"),
        ),
      ],
      0,
      0,
    )
  ],
  [
    CRDTEntity(
      "ShoppingCart",
      GCounter(),
      [
        CRDTCommandHandler(
          ModelTypeReference("AddCartItemCommand"),
          [
            "class AddCartItemCommandHandler {",
            "",
            "  def apply(state: ShoppingCartState, command: AddCartItemCommand): GCounter =",
            "    ???",
            "",
            "}"
          ].join("\n"),
        )
      ],
      0,
    )
  ],
);
