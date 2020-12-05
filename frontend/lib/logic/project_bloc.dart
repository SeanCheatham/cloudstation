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
        ModelProperty(
            "cartItems", ListTypeReference(ModelTypeReference("CartItem"))),
      ],
    ),
    Model(
      "AddCartItemCommand",
      [
        ModelProperty("cartItem", ModelTypeReference("CartItem")),
      ],
    ),
    Model(
      "CartItemAddedEvent",
      [
        ModelProperty("cartItem", ModelTypeReference("CartItem")),
      ],
    ),
    Model(
      "AddCartItemResponse",
      [
        ModelProperty("success", StaticTypeReference(StaticType.bool)),
      ],
    ),
    Model(
      "CartItem",
      [
        ModelProperty("itemId", StaticTypeReference(StaticType.string)),
        ModelProperty("count", StaticTypeReference(StaticType.int32)),
        ModelProperty("price", StaticTypeReference(StaticType.double)),
      ],
    )
  ],
  [
    EventSourcedEntity(
      "ShoppingCart",
      ModelTypeReference("ShoppingCartState"),
      [
        CommandHandler(
          ModelTypeReference("AddCartItemCommand"),
          ModelTypeReference("AddCartItemResponse"),
          "        ???",
        )
      ],
      [
        EventHandler(
          ModelTypeReference("CartItemAddedEvent"),
          "        ???",
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
          "        ???",
        )
      ],
      0,
    )
  ],
);
