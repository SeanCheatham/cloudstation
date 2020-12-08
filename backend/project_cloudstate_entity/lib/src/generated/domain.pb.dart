///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'domain.pbenum.dart';

class Project extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Project', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..pc<Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'models', $pb.PbFieldType.PM, subBuilder: Model.create)
    ..pc<EventSourcedEntity>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntities', $pb.PbFieldType.PM, protoName: 'eventSourcedEntities', subBuilder: EventSourcedEntity.create)
    ..pc<CRDTEntity>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crdtEntities', $pb.PbFieldType.PM, protoName: 'crdtEntities', subBuilder: CRDTEntity.create)
    ..hasRequiredFields = false
  ;

  Project._() : super();
  factory Project() => create();
  factory Project.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Project.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Project clone() => Project()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Project copyWith(void Function(Project) updates) => super.copyWith((message) => updates(message as Project)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Project create() => Project._();
  Project createEmptyInstance() => create();
  static $pb.PbList<Project> createRepeated() => $pb.PbList<Project>();
  @$core.pragma('dart2js:noInline')
  static Project getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Project>(create);
  static Project _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectId => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Model> get models => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<EventSourcedEntity> get eventSourcedEntities => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<CRDTEntity> get crdtEntities => $_getList(3);
}

class Model_Property extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Model.Property', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'typeReference', protoName: 'typeReference', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  Model_Property._() : super();
  factory Model_Property() => create();
  factory Model_Property.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Model_Property.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Model_Property clone() => Model_Property()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Model_Property copyWith(void Function(Model_Property) updates) => super.copyWith((message) => updates(message as Model_Property)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Model_Property create() => Model_Property._();
  Model_Property createEmptyInstance() => create();
  static $pb.PbList<Model_Property> createRepeated() => $pb.PbList<Model_Property>();
  @$core.pragma('dart2js:noInline')
  static Model_Property getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Model_Property>(create);
  static Model_Property _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  TypeReference get typeReference => $_getN(1);
  @$pb.TagNumber(2)
  set typeReference(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeReference() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureTypeReference() => $_ensure(1);
}

class Model extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Model', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..pc<Model_Property>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'properties', $pb.PbFieldType.PM, subBuilder: Model_Property.create)
    ..hasRequiredFields = false
  ;

  Model._() : super();
  factory Model() => create();
  factory Model.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Model.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Model clone() => Model()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Model copyWith(void Function(Model) updates) => super.copyWith((message) => updates(message as Model)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Model create() => Model._();
  Model createEmptyInstance() => create();
  static $pb.PbList<Model> createRepeated() => $pb.PbList<Model>();
  @$core.pragma('dart2js:noInline')
  static Model getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Model>(create);
  static Model _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<Model_Property> get properties => $_getList(1);
}

class TypeReference_Static extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypeReference.Static', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  TypeReference_Static._() : super();
  factory TypeReference_Static() => create();
  factory TypeReference_Static.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeReference_Static.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeReference_Static clone() => TypeReference_Static()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeReference_Static copyWith(void Function(TypeReference_Static) updates) => super.copyWith((message) => updates(message as TypeReference_Static)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeReference_Static create() => TypeReference_Static._();
  TypeReference_Static createEmptyInstance() => create();
  static $pb.PbList<TypeReference_Static> createRepeated() => $pb.PbList<TypeReference_Static>();
  @$core.pragma('dart2js:noInline')
  static TypeReference_Static getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeReference_Static>(create);
  static TypeReference_Static _defaultInstance;
}

class TypeReference_Model extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypeReference.Model', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..hasRequiredFields = false
  ;

  TypeReference_Model._() : super();
  factory TypeReference_Model() => create();
  factory TypeReference_Model.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeReference_Model.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeReference_Model clone() => TypeReference_Model()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeReference_Model copyWith(void Function(TypeReference_Model) updates) => super.copyWith((message) => updates(message as TypeReference_Model)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeReference_Model create() => TypeReference_Model._();
  TypeReference_Model createEmptyInstance() => create();
  static $pb.PbList<TypeReference_Model> createRepeated() => $pb.PbList<TypeReference_Model>();
  @$core.pragma('dart2js:noInline')
  static TypeReference_Model getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeReference_Model>(create);
  static TypeReference_Model _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class TypeReference_List extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypeReference.List', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  TypeReference_List._() : super();
  factory TypeReference_List() => create();
  factory TypeReference_List.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeReference_List.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeReference_List clone() => TypeReference_List()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeReference_List copyWith(void Function(TypeReference_List) updates) => super.copyWith((message) => updates(message as TypeReference_List)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeReference_List create() => TypeReference_List._();
  TypeReference_List createEmptyInstance() => create();
  static $pb.PbList<TypeReference_List> createRepeated() => $pb.PbList<TypeReference_List>();
  @$core.pragma('dart2js:noInline')
  static TypeReference_List getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeReference_List>(create);
  static TypeReference_List _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get valueType => $_getN(0);
  @$pb.TagNumber(1)
  set valueType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValueType() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureValueType() => $_ensure(0);
}

class TypeReference_Map extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypeReference.Map', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyType', protoName: 'keyType', subBuilder: TypeReference.create)
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  TypeReference_Map._() : super();
  factory TypeReference_Map() => create();
  factory TypeReference_Map.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeReference_Map.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeReference_Map clone() => TypeReference_Map()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeReference_Map copyWith(void Function(TypeReference_Map) updates) => super.copyWith((message) => updates(message as TypeReference_Map)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeReference_Map create() => TypeReference_Map._();
  TypeReference_Map createEmptyInstance() => create();
  static $pb.PbList<TypeReference_Map> createRepeated() => $pb.PbList<TypeReference_Map>();
  @$core.pragma('dart2js:noInline')
  static TypeReference_Map getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeReference_Map>(create);
  static TypeReference_Map _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get keyType => $_getN(0);
  @$pb.TagNumber(1)
  set keyType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureKeyType() => $_ensure(0);

  @$pb.TagNumber(2)
  TypeReference get valueType => $_getN(1);
  @$pb.TagNumber(2)
  set valueType(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValueType() => $_has(1);
  @$pb.TagNumber(2)
  void clearValueType() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureValueType() => $_ensure(1);
}

enum TypeReference_Reference {
  static, 
  model, 
  list, 
  map, 
  notSet
}

class TypeReference extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, TypeReference_Reference> _TypeReference_ReferenceByTag = {
    1 : TypeReference_Reference.static,
    2 : TypeReference_Reference.model,
    3 : TypeReference_Reference.list,
    4 : TypeReference_Reference.map,
    0 : TypeReference_Reference.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TypeReference', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<TypeReference_Static>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'static', subBuilder: TypeReference_Static.create)
    ..aOM<TypeReference_Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'model', subBuilder: TypeReference_Model.create)
    ..aOM<TypeReference_List>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'list', subBuilder: TypeReference_List.create)
    ..aOM<TypeReference_Map>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'map', subBuilder: TypeReference_Map.create)
    ..hasRequiredFields = false
  ;

  TypeReference._() : super();
  factory TypeReference() => create();
  factory TypeReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeReference clone() => TypeReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeReference copyWith(void Function(TypeReference) updates) => super.copyWith((message) => updates(message as TypeReference)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TypeReference create() => TypeReference._();
  TypeReference createEmptyInstance() => create();
  static $pb.PbList<TypeReference> createRepeated() => $pb.PbList<TypeReference>();
  @$core.pragma('dart2js:noInline')
  static TypeReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeReference>(create);
  static TypeReference _defaultInstance;

  TypeReference_Reference whichReference() => _TypeReference_ReferenceByTag[$_whichOneof(0)];
  void clearReference() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  TypeReference_Static get static => $_getN(0);
  @$pb.TagNumber(1)
  set static(TypeReference_Static v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatic() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatic() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference_Static ensureStatic() => $_ensure(0);

  @$pb.TagNumber(2)
  TypeReference_Model get model => $_getN(1);
  @$pb.TagNumber(2)
  set model(TypeReference_Model v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearModel() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference_Model ensureModel() => $_ensure(1);

  @$pb.TagNumber(3)
  TypeReference_List get list => $_getN(2);
  @$pb.TagNumber(3)
  set list(TypeReference_List v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasList() => $_has(2);
  @$pb.TagNumber(3)
  void clearList() => clearField(3);
  @$pb.TagNumber(3)
  TypeReference_List ensureList() => $_ensure(2);

  @$pb.TagNumber(4)
  TypeReference_Map get map => $_getN(3);
  @$pb.TagNumber(4)
  set map(TypeReference_Map v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasMap() => $_has(3);
  @$pb.TagNumber(4)
  void clearMap() => clearField(4);
  @$pb.TagNumber(4)
  TypeReference_Map ensureMap() => $_ensure(3);
}

class EventSourcedEntity_CommandHandler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntity.CommandHandler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandType', protoName: 'commandType', subBuilder: TypeReference.create)
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseType', protoName: 'responseType', subBuilder: TypeReference.create)
    ..m<$core.String, $core.String>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBlocks', protoName: 'codeBlocks', entryClassName: 'EventSourcedEntity.CommandHandler.CodeBlocksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  EventSourcedEntity_CommandHandler._() : super();
  factory EventSourcedEntity_CommandHandler() => create();
  factory EventSourcedEntity_CommandHandler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntity_CommandHandler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntity_CommandHandler clone() => EventSourcedEntity_CommandHandler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntity_CommandHandler copyWith(void Function(EventSourcedEntity_CommandHandler) updates) => super.copyWith((message) => updates(message as EventSourcedEntity_CommandHandler)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity_CommandHandler create() => EventSourcedEntity_CommandHandler._();
  EventSourcedEntity_CommandHandler createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntity_CommandHandler> createRepeated() => $pb.PbList<EventSourcedEntity_CommandHandler>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity_CommandHandler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntity_CommandHandler>(create);
  static EventSourcedEntity_CommandHandler _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get commandType => $_getN(0);
  @$pb.TagNumber(1)
  set commandType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommandType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureCommandType() => $_ensure(0);

  @$pb.TagNumber(2)
  TypeReference get responseType => $_getN(1);
  @$pb.TagNumber(2)
  set responseType(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseType() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseType() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureResponseType() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get codeBlocks => $_getMap(2);
}

class EventSourcedEntity_EventHandler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntity.EventHandler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', protoName: 'eventType', subBuilder: TypeReference.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBlocks', protoName: 'codeBlocks', entryClassName: 'EventSourcedEntity.EventHandler.CodeBlocksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  EventSourcedEntity_EventHandler._() : super();
  factory EventSourcedEntity_EventHandler() => create();
  factory EventSourcedEntity_EventHandler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntity_EventHandler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntity_EventHandler clone() => EventSourcedEntity_EventHandler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntity_EventHandler copyWith(void Function(EventSourcedEntity_EventHandler) updates) => super.copyWith((message) => updates(message as EventSourcedEntity_EventHandler)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity_EventHandler create() => EventSourcedEntity_EventHandler._();
  EventSourcedEntity_EventHandler createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntity_EventHandler> createRepeated() => $pb.PbList<EventSourcedEntity_EventHandler>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity_EventHandler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntity_EventHandler>(create);
  static EventSourcedEntity_EventHandler _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get eventType => $_getN(0);
  @$pb.TagNumber(1)
  set eventType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEventType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEventType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureEventType() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get codeBlocks => $_getMap(1);
}

class EventSourcedEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EventSourcedEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateType', protoName: 'stateType', subBuilder: TypeReference.create)
    ..pc<EventSourcedEntity_CommandHandler>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandHandlers', $pb.PbFieldType.PM, protoName: 'commandHandlers', subBuilder: EventSourcedEntity_CommandHandler.create)
    ..pc<EventSourcedEntity_EventHandler>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventHandlers', $pb.PbFieldType.PM, protoName: 'eventHandlers', subBuilder: EventSourcedEntity_EventHandler.create)
    ..hasRequiredFields = false
  ;

  EventSourcedEntity._() : super();
  factory EventSourcedEntity() => create();
  factory EventSourcedEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSourcedEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSourcedEntity clone() => EventSourcedEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSourcedEntity copyWith(void Function(EventSourcedEntity) updates) => super.copyWith((message) => updates(message as EventSourcedEntity)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity create() => EventSourcedEntity._();
  EventSourcedEntity createEmptyInstance() => create();
  static $pb.PbList<EventSourcedEntity> createRepeated() => $pb.PbList<EventSourcedEntity>();
  @$core.pragma('dart2js:noInline')
  static EventSourcedEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSourcedEntity>(create);
  static EventSourcedEntity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  TypeReference get stateType => $_getN(1);
  @$pb.TagNumber(2)
  set stateType(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStateType() => $_has(1);
  @$pb.TagNumber(2)
  void clearStateType() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureStateType() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<EventSourcedEntity_CommandHandler> get commandHandlers => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<EventSourcedEntity_EventHandler> get eventHandlers => $_getList(3);
}

class CRDTEntity_CommandHandler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDTEntity.CommandHandler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandType', protoName: 'commandType', subBuilder: TypeReference.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBlocks', protoName: 'codeBlocks', entryClassName: 'CRDTEntity.CommandHandler.CodeBlocksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  CRDTEntity_CommandHandler._() : super();
  factory CRDTEntity_CommandHandler() => create();
  factory CRDTEntity_CommandHandler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDTEntity_CommandHandler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDTEntity_CommandHandler clone() => CRDTEntity_CommandHandler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDTEntity_CommandHandler copyWith(void Function(CRDTEntity_CommandHandler) updates) => super.copyWith((message) => updates(message as CRDTEntity_CommandHandler)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDTEntity_CommandHandler create() => CRDTEntity_CommandHandler._();
  CRDTEntity_CommandHandler createEmptyInstance() => create();
  static $pb.PbList<CRDTEntity_CommandHandler> createRepeated() => $pb.PbList<CRDTEntity_CommandHandler>();
  @$core.pragma('dart2js:noInline')
  static CRDTEntity_CommandHandler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDTEntity_CommandHandler>(create);
  static CRDTEntity_CommandHandler _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get commandType => $_getN(0);
  @$pb.TagNumber(1)
  set commandType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommandType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureCommandType() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get codeBlocks => $_getMap(1);
}

class CRDTEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDTEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<CRDT>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'crdt', subBuilder: CRDT.create)
    ..pc<CRDTEntity_CommandHandler>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandHandlers', $pb.PbFieldType.PM, protoName: 'commandHandlers', subBuilder: CRDTEntity_CommandHandler.create)
    ..hasRequiredFields = false
  ;

  CRDTEntity._() : super();
  factory CRDTEntity() => create();
  factory CRDTEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDTEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDTEntity clone() => CRDTEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDTEntity copyWith(void Function(CRDTEntity) updates) => super.copyWith((message) => updates(message as CRDTEntity)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDTEntity create() => CRDTEntity._();
  CRDTEntity createEmptyInstance() => create();
  static $pb.PbList<CRDTEntity> createRepeated() => $pb.PbList<CRDTEntity>();
  @$core.pragma('dart2js:noInline')
  static CRDTEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDTEntity>(create);
  static CRDTEntity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  CRDT get crdt => $_getN(1);
  @$pb.TagNumber(2)
  set crdt(CRDT v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCrdt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCrdt() => clearField(2);
  @$pb.TagNumber(2)
  CRDT ensureCrdt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<CRDTEntity_CommandHandler> get commandHandlers => $_getList(2);
}

class CRDT_GCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.GCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CRDT_GCounter._() : super();
  factory CRDT_GCounter() => create();
  factory CRDT_GCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_GCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_GCounter clone() => CRDT_GCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_GCounter copyWith(void Function(CRDT_GCounter) updates) => super.copyWith((message) => updates(message as CRDT_GCounter)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_GCounter create() => CRDT_GCounter._();
  CRDT_GCounter createEmptyInstance() => create();
  static $pb.PbList<CRDT_GCounter> createRepeated() => $pb.PbList<CRDT_GCounter>();
  @$core.pragma('dart2js:noInline')
  static CRDT_GCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_GCounter>(create);
  static CRDT_GCounter _defaultInstance;
}

class CRDT_PNCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.PNCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CRDT_PNCounter._() : super();
  factory CRDT_PNCounter() => create();
  factory CRDT_PNCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_PNCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_PNCounter clone() => CRDT_PNCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_PNCounter copyWith(void Function(CRDT_PNCounter) updates) => super.copyWith((message) => updates(message as CRDT_PNCounter)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_PNCounter create() => CRDT_PNCounter._();
  CRDT_PNCounter createEmptyInstance() => create();
  static $pb.PbList<CRDT_PNCounter> createRepeated() => $pb.PbList<CRDT_PNCounter>();
  @$core.pragma('dart2js:noInline')
  static CRDT_PNCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_PNCounter>(create);
  static CRDT_PNCounter _defaultInstance;
}

class CRDT_GSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.GSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  CRDT_GSet._() : super();
  factory CRDT_GSet() => create();
  factory CRDT_GSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_GSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_GSet clone() => CRDT_GSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_GSet copyWith(void Function(CRDT_GSet) updates) => super.copyWith((message) => updates(message as CRDT_GSet)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_GSet create() => CRDT_GSet._();
  CRDT_GSet createEmptyInstance() => create();
  static $pb.PbList<CRDT_GSet> createRepeated() => $pb.PbList<CRDT_GSet>();
  @$core.pragma('dart2js:noInline')
  static CRDT_GSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_GSet>(create);
  static CRDT_GSet _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get valueType => $_getN(0);
  @$pb.TagNumber(1)
  set valueType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValueType() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureValueType() => $_ensure(0);
}

class CRDT_ORSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.ORSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  CRDT_ORSet._() : super();
  factory CRDT_ORSet() => create();
  factory CRDT_ORSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_ORSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_ORSet clone() => CRDT_ORSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_ORSet copyWith(void Function(CRDT_ORSet) updates) => super.copyWith((message) => updates(message as CRDT_ORSet)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_ORSet create() => CRDT_ORSet._();
  CRDT_ORSet createEmptyInstance() => create();
  static $pb.PbList<CRDT_ORSet> createRepeated() => $pb.PbList<CRDT_ORSet>();
  @$core.pragma('dart2js:noInline')
  static CRDT_ORSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_ORSet>(create);
  static CRDT_ORSet _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get valueType => $_getN(0);
  @$pb.TagNumber(1)
  set valueType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValueType() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureValueType() => $_ensure(0);
}

class CRDT_Flag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.Flag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CRDT_Flag._() : super();
  factory CRDT_Flag() => create();
  factory CRDT_Flag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_Flag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_Flag clone() => CRDT_Flag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_Flag copyWith(void Function(CRDT_Flag) updates) => super.copyWith((message) => updates(message as CRDT_Flag)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_Flag create() => CRDT_Flag._();
  CRDT_Flag createEmptyInstance() => create();
  static $pb.PbList<CRDT_Flag> createRepeated() => $pb.PbList<CRDT_Flag>();
  @$core.pragma('dart2js:noInline')
  static CRDT_Flag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_Flag>(create);
  static CRDT_Flag _defaultInstance;
}

class CRDT_LWWRegister extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.LWWRegister', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  CRDT_LWWRegister._() : super();
  factory CRDT_LWWRegister() => create();
  factory CRDT_LWWRegister.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_LWWRegister.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_LWWRegister clone() => CRDT_LWWRegister()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_LWWRegister copyWith(void Function(CRDT_LWWRegister) updates) => super.copyWith((message) => updates(message as CRDT_LWWRegister)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_LWWRegister create() => CRDT_LWWRegister._();
  CRDT_LWWRegister createEmptyInstance() => create();
  static $pb.PbList<CRDT_LWWRegister> createRepeated() => $pb.PbList<CRDT_LWWRegister>();
  @$core.pragma('dart2js:noInline')
  static CRDT_LWWRegister getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_LWWRegister>(create);
  static CRDT_LWWRegister _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get valueType => $_getN(0);
  @$pb.TagNumber(1)
  set valueType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValueType() => $_has(0);
  @$pb.TagNumber(1)
  void clearValueType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureValueType() => $_ensure(0);
}

class CRDT_ORMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.ORMap', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyType', protoName: 'keyType', subBuilder: TypeReference.create)
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  CRDT_ORMap._() : super();
  factory CRDT_ORMap() => create();
  factory CRDT_ORMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_ORMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_ORMap clone() => CRDT_ORMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_ORMap copyWith(void Function(CRDT_ORMap) updates) => super.copyWith((message) => updates(message as CRDT_ORMap)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_ORMap create() => CRDT_ORMap._();
  CRDT_ORMap createEmptyInstance() => create();
  static $pb.PbList<CRDT_ORMap> createRepeated() => $pb.PbList<CRDT_ORMap>();
  @$core.pragma('dart2js:noInline')
  static CRDT_ORMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_ORMap>(create);
  static CRDT_ORMap _defaultInstance;

  @$pb.TagNumber(1)
  TypeReference get keyType => $_getN(0);
  @$pb.TagNumber(1)
  set keyType(TypeReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyType() => clearField(1);
  @$pb.TagNumber(1)
  TypeReference ensureKeyType() => $_ensure(0);

  @$pb.TagNumber(2)
  TypeReference get valueType => $_getN(1);
  @$pb.TagNumber(2)
  set valueType(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValueType() => $_has(1);
  @$pb.TagNumber(2)
  void clearValueType() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureValueType() => $_ensure(1);
}

class CRDT_Vote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT.Vote', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CRDT_Vote._() : super();
  factory CRDT_Vote() => create();
  factory CRDT_Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT_Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT_Vote clone() => CRDT_Vote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT_Vote copyWith(void Function(CRDT_Vote) updates) => super.copyWith((message) => updates(message as CRDT_Vote)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT_Vote create() => CRDT_Vote._();
  CRDT_Vote createEmptyInstance() => create();
  static $pb.PbList<CRDT_Vote> createRepeated() => $pb.PbList<CRDT_Vote>();
  @$core.pragma('dart2js:noInline')
  static CRDT_Vote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT_Vote>(create);
  static CRDT_Vote _defaultInstance;
}

enum CRDT_CrdtType {
  gCounter, 
  pnCounter, 
  gSet, 
  orSet, 
  flag, 
  lwwRegister, 
  orMap, 
  vote, 
  notSet
}

class CRDT extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CRDT_CrdtType> _CRDT_CrdtTypeByTag = {
    1 : CRDT_CrdtType.gCounter,
    2 : CRDT_CrdtType.pnCounter,
    3 : CRDT_CrdtType.gSet,
    4 : CRDT_CrdtType.orSet,
    5 : CRDT_CrdtType.flag,
    6 : CRDT_CrdtType.lwwRegister,
    7 : CRDT_CrdtType.orMap,
    8 : CRDT_CrdtType.vote,
    0 : CRDT_CrdtType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CRDT', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<CRDT_GCounter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gCounter', protoName: 'gCounter', subBuilder: CRDT_GCounter.create)
    ..aOM<CRDT_PNCounter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pnCounter', protoName: 'pnCounter', subBuilder: CRDT_PNCounter.create)
    ..aOM<CRDT_GSet>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gSet', protoName: 'gSet', subBuilder: CRDT_GSet.create)
    ..aOM<CRDT_ORSet>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orSet', protoName: 'orSet', subBuilder: CRDT_ORSet.create)
    ..aOM<CRDT_Flag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flag', subBuilder: CRDT_Flag.create)
    ..aOM<CRDT_LWWRegister>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lwwRegister', protoName: 'lwwRegister', subBuilder: CRDT_LWWRegister.create)
    ..aOM<CRDT_ORMap>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orMap', protoName: 'orMap', subBuilder: CRDT_ORMap.create)
    ..aOM<CRDT_Vote>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vote', subBuilder: CRDT_Vote.create)
    ..hasRequiredFields = false
  ;

  CRDT._() : super();
  factory CRDT() => create();
  factory CRDT.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CRDT.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CRDT clone() => CRDT()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CRDT copyWith(void Function(CRDT) updates) => super.copyWith((message) => updates(message as CRDT)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CRDT create() => CRDT._();
  CRDT createEmptyInstance() => create();
  static $pb.PbList<CRDT> createRepeated() => $pb.PbList<CRDT>();
  @$core.pragma('dart2js:noInline')
  static CRDT getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CRDT>(create);
  static CRDT _defaultInstance;

  CRDT_CrdtType whichCrdtType() => _CRDT_CrdtTypeByTag[$_whichOneof(0)];
  void clearCrdtType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CRDT_GCounter get gCounter => $_getN(0);
  @$pb.TagNumber(1)
  set gCounter(CRDT_GCounter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGCounter() => clearField(1);
  @$pb.TagNumber(1)
  CRDT_GCounter ensureGCounter() => $_ensure(0);

  @$pb.TagNumber(2)
  CRDT_PNCounter get pnCounter => $_getN(1);
  @$pb.TagNumber(2)
  set pnCounter(CRDT_PNCounter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPnCounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearPnCounter() => clearField(2);
  @$pb.TagNumber(2)
  CRDT_PNCounter ensurePnCounter() => $_ensure(1);

  @$pb.TagNumber(3)
  CRDT_GSet get gSet => $_getN(2);
  @$pb.TagNumber(3)
  set gSet(CRDT_GSet v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGSet() => $_has(2);
  @$pb.TagNumber(3)
  void clearGSet() => clearField(3);
  @$pb.TagNumber(3)
  CRDT_GSet ensureGSet() => $_ensure(2);

  @$pb.TagNumber(4)
  CRDT_ORSet get orSet => $_getN(3);
  @$pb.TagNumber(4)
  set orSet(CRDT_ORSet v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrSet() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrSet() => clearField(4);
  @$pb.TagNumber(4)
  CRDT_ORSet ensureOrSet() => $_ensure(3);

  @$pb.TagNumber(5)
  CRDT_Flag get flag => $_getN(4);
  @$pb.TagNumber(5)
  set flag(CRDT_Flag v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlag() => clearField(5);
  @$pb.TagNumber(5)
  CRDT_Flag ensureFlag() => $_ensure(4);

  @$pb.TagNumber(6)
  CRDT_LWWRegister get lwwRegister => $_getN(5);
  @$pb.TagNumber(6)
  set lwwRegister(CRDT_LWWRegister v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLwwRegister() => $_has(5);
  @$pb.TagNumber(6)
  void clearLwwRegister() => clearField(6);
  @$pb.TagNumber(6)
  CRDT_LWWRegister ensureLwwRegister() => $_ensure(5);

  @$pb.TagNumber(7)
  CRDT_ORMap get orMap => $_getN(6);
  @$pb.TagNumber(7)
  set orMap(CRDT_ORMap v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrMap() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrMap() => clearField(7);
  @$pb.TagNumber(7)
  CRDT_ORMap ensureOrMap() => $_ensure(6);

  @$pb.TagNumber(8)
  CRDT_Vote get vote => $_getN(7);
  @$pb.TagNumber(8)
  set vote(CRDT_Vote v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasVote() => $_has(7);
  @$pb.TagNumber(8)
  void clearVote() => clearField(8);
  @$pb.TagNumber(8)
  CRDT_Vote ensureVote() => $_ensure(7);
}

