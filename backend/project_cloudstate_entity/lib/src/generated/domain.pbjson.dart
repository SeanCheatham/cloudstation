///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const StaticType$json = const {
  '1': 'StaticType',
  '2': const [
    const {'1': 'INT32', '2': 0},
    const {'1': 'INT64', '2': 1},
    const {'1': 'FLOAT', '2': 2},
    const {'1': 'DOUBLE', '2': 3},
    const {'1': 'STRING', '2': 4},
    const {'1': 'BOOL', '2': 5},
  ],
};

const Project$json = const {
  '1': 'Project',
  '2': const [
    const {'1': 'project_id', '3': 1, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'models', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.Model', '10': 'models'},
    const {'1': 'eventSourcedEntities', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.EventSourcedEntity', '10': 'eventSourcedEntities'},
    const {'1': 'crdtEntities', '3': 4, '4': 3, '5': 11, '6': '.cloudstation.project.CRDTEntity', '10': 'crdtEntities'},
  ],
};

const Model$json = const {
  '1': 'Model',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'properties', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.Model.Property', '10': 'properties'},
  ],
  '3': const [Model_Property$json],
};

const Model_Property$json = const {
  '1': 'Property',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'typeReference', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'typeReference'},
  ],
};

const TypeReference$json = const {
  '1': 'TypeReference',
  '2': const [
    const {'1': 'static', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference.Static', '9': 0, '10': 'static'},
    const {'1': 'model', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference.Model', '9': 0, '10': 'model'},
    const {'1': 'list', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference.List', '9': 0, '10': 'list'},
    const {'1': 'map', '3': 4, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference.Map', '9': 0, '10': 'map'},
  ],
  '3': const [TypeReference_Static$json, TypeReference_Model$json, TypeReference_List$json, TypeReference_Map$json],
  '8': const [
    const {'1': 'reference'},
  ],
};

const TypeReference_Static$json = const {
  '1': 'Static',
};

const TypeReference_Model$json = const {
  '1': 'Model',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

const TypeReference_List$json = const {
  '1': 'List',
  '2': const [
    const {'1': 'valueType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const TypeReference_Map$json = const {
  '1': 'Map',
  '2': const [
    const {'1': 'keyType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'keyType'},
    const {'1': 'valueType', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const EventSourcedEntity$json = const {
  '1': 'EventSourcedEntity',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'stateType', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'stateType'},
    const {'1': 'commandHandlers', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.EventSourcedEntity.CommandHandler', '10': 'commandHandlers'},
    const {'1': 'eventHandlers', '3': 4, '4': 3, '5': 11, '6': '.cloudstation.project.EventSourcedEntity.EventHandler', '10': 'eventHandlers'},
  ],
  '3': const [EventSourcedEntity_CommandHandler$json, EventSourcedEntity_EventHandler$json],
};

const EventSourcedEntity_CommandHandler$json = const {
  '1': 'CommandHandler',
  '2': const [
    const {'1': 'commandType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'commandType'},
    const {'1': 'responseType', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'responseType'},
    const {'1': 'codeBlocks', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.EventSourcedEntity.CommandHandler.CodeBlocksEntry', '10': 'codeBlocks'},
  ],
  '3': const [EventSourcedEntity_CommandHandler_CodeBlocksEntry$json],
};

const EventSourcedEntity_CommandHandler_CodeBlocksEntry$json = const {
  '1': 'CodeBlocksEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const EventSourcedEntity_EventHandler$json = const {
  '1': 'EventHandler',
  '2': const [
    const {'1': 'eventType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'eventType'},
    const {'1': 'codeBlocks', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.EventSourcedEntity.EventHandler.CodeBlocksEntry', '10': 'codeBlocks'},
  ],
  '3': const [EventSourcedEntity_EventHandler_CodeBlocksEntry$json],
};

const EventSourcedEntity_EventHandler_CodeBlocksEntry$json = const {
  '1': 'CodeBlocksEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const CRDTEntity$json = const {
  '1': 'CRDTEntity',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'crdt', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT', '10': 'crdt'},
    const {'1': 'commandHandlers', '3': 3, '4': 3, '5': 11, '6': '.cloudstation.project.CRDTEntity.CommandHandler', '10': 'commandHandlers'},
  ],
  '3': const [CRDTEntity_CommandHandler$json],
};

const CRDTEntity_CommandHandler$json = const {
  '1': 'CommandHandler',
  '2': const [
    const {'1': 'commandType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'commandType'},
    const {'1': 'codeBlocks', '3': 2, '4': 3, '5': 11, '6': '.cloudstation.project.CRDTEntity.CommandHandler.CodeBlocksEntry', '10': 'codeBlocks'},
  ],
  '3': const [CRDTEntity_CommandHandler_CodeBlocksEntry$json],
};

const CRDTEntity_CommandHandler_CodeBlocksEntry$json = const {
  '1': 'CodeBlocksEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

const CRDT$json = const {
  '1': 'CRDT',
  '2': const [
    const {'1': 'gCounter', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.GCounter', '9': 0, '10': 'gCounter'},
    const {'1': 'pnCounter', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.PNCounter', '9': 0, '10': 'pnCounter'},
    const {'1': 'gSet', '3': 3, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.GSet', '9': 0, '10': 'gSet'},
    const {'1': 'orSet', '3': 4, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.ORSet', '9': 0, '10': 'orSet'},
    const {'1': 'flag', '3': 5, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.Flag', '9': 0, '10': 'flag'},
    const {'1': 'lwwRegister', '3': 6, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.LWWRegister', '9': 0, '10': 'lwwRegister'},
    const {'1': 'orMap', '3': 7, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.ORMap', '9': 0, '10': 'orMap'},
    const {'1': 'vote', '3': 8, '4': 1, '5': 11, '6': '.cloudstation.project.CRDT.Vote', '9': 0, '10': 'vote'},
  ],
  '3': const [CRDT_GCounter$json, CRDT_PNCounter$json, CRDT_GSet$json, CRDT_ORSet$json, CRDT_Flag$json, CRDT_LWWRegister$json, CRDT_ORMap$json, CRDT_Vote$json],
  '8': const [
    const {'1': 'crdtType'},
  ],
};

const CRDT_GCounter$json = const {
  '1': 'GCounter',
};

const CRDT_PNCounter$json = const {
  '1': 'PNCounter',
};

const CRDT_GSet$json = const {
  '1': 'GSet',
  '2': const [
    const {'1': 'valueType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const CRDT_ORSet$json = const {
  '1': 'ORSet',
  '2': const [
    const {'1': 'valueType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const CRDT_Flag$json = const {
  '1': 'Flag',
};

const CRDT_LWWRegister$json = const {
  '1': 'LWWRegister',
  '2': const [
    const {'1': 'valueType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const CRDT_ORMap$json = const {
  '1': 'ORMap',
  '2': const [
    const {'1': 'keyType', '3': 1, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'keyType'},
    const {'1': 'valueType', '3': 2, '4': 1, '5': 11, '6': '.cloudstation.project.TypeReference', '10': 'valueType'},
  ],
};

const CRDT_Vote$json = const {
  '1': 'Vote',
};

