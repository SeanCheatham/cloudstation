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
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'project', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.Project', '10': 'project'},
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
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
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
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const UpdateModelCommand$json = const {
  '1': 'UpdateModelCommand',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'projectId'},
    const {'1': 'originalModelName', '3': 2, '4': 1, '5': 9, '10': 'originalModelName'},
    const {'1': 'updatedModel', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.Model', '10': 'updatedModel'},
  ],
};

const UpdateModelResponse$json = const {
  '1': 'UpdateModelResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

