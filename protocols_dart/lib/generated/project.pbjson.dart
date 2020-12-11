///
//  Generated code. Do not modify.
//  source: project.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const GetProjectCommand$json = const {
  '1': 'GetProjectCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
  ],
};

const GetProjectResponse$json = const {
  '1': 'GetProjectResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
    const {'1': 'project', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.Project', '10': 'project'},
  ],
};

const AddModelCommand$json = const {
  '1': 'AddModelCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'model', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.Model', '10': 'model'},
  ],
};

const AddModelResponse$json = const {
  '1': 'AddModelResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const RemoveModelCommand$json = const {
  '1': 'RemoveModelCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RemoveModelResponse$json = const {
  '1': 'RemoveModelResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const UpdateModelCommand$json = const {
  '1': 'UpdateModelCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'originalName', '3': 2, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'updatedModel', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.Model', '10': 'updatedModel'},
  ],
};

const UpdateModelResponse$json = const {
  '1': 'UpdateModelResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const AddEventSourcedEntityCommand$json = const {
  '1': 'AddEventSourcedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'entity', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.EventSourcedEntity', '10': 'entity'},
  ],
};

const AddEventSourcedEntityResponse$json = const {
  '1': 'AddEventSourcedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const RemoveEventSourcedEntityCommand$json = const {
  '1': 'RemoveEventSourcedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RemoveEventSourcedEntityResponse$json = const {
  '1': 'RemoveEventSourcedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const UpdateEventSourcedEntityCommand$json = const {
  '1': 'UpdateEventSourcedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'originalName', '3': 2, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'entity', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.EventSourcedEntity', '10': 'entity'},
  ],
};

const UpdateEventSourcedEntityResponse$json = const {
  '1': 'UpdateEventSourcedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const AddReplicatedEntityCommand$json = const {
  '1': 'AddReplicatedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'entity', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.ReplicatedEntity', '10': 'entity'},
  ],
};

const AddReplicatedEntityResponse$json = const {
  '1': 'AddReplicatedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const RemoveReplicatedEntityCommand$json = const {
  '1': 'RemoveReplicatedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RemoveReplicatedEntityResponse$json = const {
  '1': 'RemoveReplicatedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const UpdateReplicatedEntityCommand$json = const {
  '1': 'UpdateReplicatedEntityCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'originalName', '3': 2, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'entity', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.ReplicatedEntity', '10': 'entity'},
  ],
};

const UpdateReplicatedEntityResponse$json = const {
  '1': 'UpdateReplicatedEntityResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const AddActionCommand$json = const {
  '1': 'AddActionCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'action', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.Action', '10': 'action'},
  ],
};

const AddActionResponse$json = const {
  '1': 'AddActionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const RemoveActionCommand$json = const {
  '1': 'RemoveActionCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const RemoveActionResponse$json = const {
  '1': 'RemoveActionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const UpdateActionCommand$json = const {
  '1': 'UpdateActionCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'originalName', '3': 2, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'action', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.Action', '10': 'action'},
  ],
};

const UpdateActionResponse$json = const {
  '1': 'UpdateActionResponse',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Result', '10': 'result'},
  ],
};

const VerifyCommand$json = const {
  '1': 'VerifyCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'eventSourcedEntityNames', '3': 2, '4': 3, '5': 9, '10': 'eventSourcedEntityNames'},
    const {'1': 'replicatedEntityNames', '3': 3, '4': 3, '5': 9, '10': 'replicatedEntityNames'},
    const {'1': 'actionNames', '3': 4, '4': 3, '5': 9, '10': 'actionNames'},
  ],
};

const VerifyResponse$json = const {
  '1': 'VerifyResponse',
  '2': const [
    const {'1': 'eventSourcedEntityVerifications', '3': 1, '4': 3, '5': 11, '6': '.cloudstation.project.VerifyResponse.EventSourcedEntityVerificationsEntry', '10': 'eventSourcedEntityVerifications'},
    const {'1': 'replicatedEntityVerifications', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.VerifyResponse.ReplicatedEntityVerificationsEntry', '10': 'replicatedEntityVerifications'},
    const {'1': 'actionVerifications', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.VerifyResponse.ActionVerificationsEntry', '10': 'actionVerifications'},
  ],
  '3': const [VerifyResponse_EventSourcedEntityVerificationsEntry$json, VerifyResponse_ReplicatedEntityVerificationsEntry$json, VerifyResponse_ActionVerificationsEntry$json, VerifyResponse_VerificationResult$json],
};

const VerifyResponse_EventSourcedEntityVerificationsEntry$json = const {
  '1': 'EventSourcedEntityVerificationsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.VerifyResponse.VerificationResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const VerifyResponse_ReplicatedEntityVerificationsEntry$json = const {
  '1': 'ReplicatedEntityVerificationsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.VerifyResponse.VerificationResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const VerifyResponse_ActionVerificationsEntry$json = const {
  '1': 'ActionVerificationsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.VerifyResponse.VerificationResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const VerifyResponse_VerificationResult$json = const {
  '1': 'VerificationResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 9, '10': 'errors'},
  ],
};

const DeployCommand$json = const {
  '1': 'DeployCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'eventSourcedEntityNames', '3': 2, '4': 3, '5': 9, '10': 'eventSourcedEntityNames'},
    const {'1': 'replicatedEntityNames', '3': 3, '4': 3, '5': 9, '10': 'replicatedEntityNames'},
    const {'1': 'actionNames', '3': 4, '4': 3, '5': 9, '10': 'actionNames'},
  ],
};

const DeployResponse$json = const {
  '1': 'DeployResponse',
  '2': const [
    const {'1': 'eventSourcedEntityResults', '3': 1, '4': 3, '5': 11, '6': '.cloudstation.project.DeployResponse.EventSourcedEntityResultsEntry', '10': 'eventSourcedEntityResults'},
    const {'1': 'replicatedEntityResults', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.DeployResponse.ReplicatedEntityResultsEntry', '10': 'replicatedEntityResults'},
    const {'1': 'actionResults', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.DeployResponse.ActionResultsEntry', '10': 'actionResults'},
  ],
  '3': const [DeployResponse_EventSourcedEntityResultsEntry$json, DeployResponse_ReplicatedEntityResultsEntry$json, DeployResponse_ActionResultsEntry$json, DeployResponse_DeployResult$json],
};

const DeployResponse_EventSourcedEntityResultsEntry$json = const {
  '1': 'EventSourcedEntityResultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.DeployResponse.DeployResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const DeployResponse_ReplicatedEntityResultsEntry$json = const {
  '1': 'ReplicatedEntityResultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.DeployResponse.DeployResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const DeployResponse_ActionResultsEntry$json = const {
  '1': 'ActionResultsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.DeployResponse.DeployResult', '10': 'value'},
  ],
  '7': const {'7': true},
};

const DeployResponse_DeployResult$json = const {
  '1': 'DeployResult',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'errors', '3': 2, '4': 3, '5': 9, '10': 'errors'},
  ],
};

const ModelAddedEvent$json = const {
  '1': 'ModelAddedEvent',
  '2': const [
    const {'1': 'model', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Model', '10': 'model'},
  ],
};

const ModelRemovedEvent$json = const {
  '1': 'ModelRemovedEvent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ModelUpdatedEvent$json = const {
  '1': 'ModelUpdatedEvent',
  '2': const [
    const {'1': 'originalName', '3': 1, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'updatedModel', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.Model', '10': 'updatedModel'},
  ],
};

const EventSourcedEntityAddedEvent$json = const {
  '1': 'EventSourcedEntityAddedEvent',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.EventSourcedEntity', '10': 'entity'},
  ],
};

const EventSourcedEntityRemovedEvent$json = const {
  '1': 'EventSourcedEntityRemovedEvent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const EventSourcedEntityUpdatedEvent$json = const {
  '1': 'EventSourcedEntityUpdatedEvent',
  '2': const [
    const {'1': 'originalName', '3': 1, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'entity', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.EventSourcedEntity', '10': 'entity'},
  ],
};

const ReplicatedEntityAddedEvent$json = const {
  '1': 'ReplicatedEntityAddedEvent',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.ReplicatedEntity', '10': 'entity'},
  ],
};

const ReplicatedEntityRemovedEvent$json = const {
  '1': 'ReplicatedEntityRemovedEvent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ReplicatedEntityUpdatedEvent$json = const {
  '1': 'ReplicatedEntityUpdatedEvent',
  '2': const [
    const {'1': 'originalName', '3': 1, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'entity', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.ReplicatedEntity', '10': 'entity'},
  ],
};

const ActionAddedEvent$json = const {
  '1': 'ActionAddedEvent',
  '2': const [
    const {'1': 'action', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.Action', '10': 'action'},
  ],
};

const ActionRemovedEvent$json = const {
  '1': 'ActionRemovedEvent',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ActionUpdatedEvent$json = const {
  '1': 'ActionUpdatedEvent',
  '2': const [
    const {'1': 'originalName', '3': 1, '4': 1, '5': 9, '10': 'originalName'},
    const {'1': 'action', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.Action', '10': 'action'},
  ],
};

const Result$json = const {
  '1': 'Result',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

