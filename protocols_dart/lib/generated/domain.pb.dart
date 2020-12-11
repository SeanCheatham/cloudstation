///
//  Generated code. Do not modify.
//  source: domain.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'domain.pbenum.dart';

export 'domain.pbenum.dart';

class Project extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Project', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'projectId')
    ..pc<Model>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'models', $pb.PbFieldType.PM, subBuilder: Model.create)
    ..pc<EventSourcedEntity>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventSourcedEntities', $pb.PbFieldType.PM, protoName: 'eventSourcedEntities', subBuilder: EventSourcedEntity.create)
    ..pc<ReplicatedEntity>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replicatedEntities', $pb.PbFieldType.PM, protoName: 'replicatedEntities', subBuilder: ReplicatedEntity.create)
    ..pc<Action>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actions', $pb.PbFieldType.PM, subBuilder: Action.create)
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
  $core.List<ReplicatedEntity> get replicatedEntities => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<Action> get actions => $_getList(4);
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
    ..e<StaticType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staticType', $pb.PbFieldType.OE, protoName: 'staticType', defaultOrMaker: StaticType.INT32, valueOf: StaticType.valueOf, enumValues: StaticType.values)
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

  @$pb.TagNumber(1)
  StaticType get staticType => $_getN(0);
  @$pb.TagNumber(1)
  set staticType(StaticType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStaticType() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaticType() => clearField(1);
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

class ReplicatedEntity_CommandHandler extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedEntity.CommandHandler', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandType', protoName: 'commandType', subBuilder: TypeReference.create)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBlocks', protoName: 'codeBlocks', entryClassName: 'ReplicatedEntity.CommandHandler.CodeBlocksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  ReplicatedEntity_CommandHandler._() : super();
  factory ReplicatedEntity_CommandHandler() => create();
  factory ReplicatedEntity_CommandHandler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedEntity_CommandHandler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedEntity_CommandHandler clone() => ReplicatedEntity_CommandHandler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedEntity_CommandHandler copyWith(void Function(ReplicatedEntity_CommandHandler) updates) => super.copyWith((message) => updates(message as ReplicatedEntity_CommandHandler)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntity_CommandHandler create() => ReplicatedEntity_CommandHandler._();
  ReplicatedEntity_CommandHandler createEmptyInstance() => create();
  static $pb.PbList<ReplicatedEntity_CommandHandler> createRepeated() => $pb.PbList<ReplicatedEntity_CommandHandler>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntity_CommandHandler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedEntity_CommandHandler>(create);
  static ReplicatedEntity_CommandHandler _defaultInstance;

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

class ReplicatedEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<ReplicatedData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ReplicatedData', protoName: 'ReplicatedData', subBuilder: ReplicatedData.create)
    ..pc<ReplicatedEntity_CommandHandler>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandHandlers', $pb.PbFieldType.PM, protoName: 'commandHandlers', subBuilder: ReplicatedEntity_CommandHandler.create)
    ..hasRequiredFields = false
  ;

  ReplicatedEntity._() : super();
  factory ReplicatedEntity() => create();
  factory ReplicatedEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedEntity clone() => ReplicatedEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedEntity copyWith(void Function(ReplicatedEntity) updates) => super.copyWith((message) => updates(message as ReplicatedEntity)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntity create() => ReplicatedEntity._();
  ReplicatedEntity createEmptyInstance() => create();
  static $pb.PbList<ReplicatedEntity> createRepeated() => $pb.PbList<ReplicatedEntity>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedEntity>(create);
  static ReplicatedEntity _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  ReplicatedData get replicatedData => $_getN(1);
  @$pb.TagNumber(2)
  set replicatedData(ReplicatedData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplicatedData() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplicatedData() => clearField(2);
  @$pb.TagNumber(2)
  ReplicatedData ensureReplicatedData() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<ReplicatedEntity_CommandHandler> get commandHandlers => $_getList(2);
}

class ReplicatedData_GCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.GCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_GCounter._() : super();
  factory ReplicatedData_GCounter() => create();
  factory ReplicatedData_GCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_GCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_GCounter clone() => ReplicatedData_GCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_GCounter copyWith(void Function(ReplicatedData_GCounter) updates) => super.copyWith((message) => updates(message as ReplicatedData_GCounter)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_GCounter create() => ReplicatedData_GCounter._();
  ReplicatedData_GCounter createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_GCounter> createRepeated() => $pb.PbList<ReplicatedData_GCounter>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_GCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_GCounter>(create);
  static ReplicatedData_GCounter _defaultInstance;
}

class ReplicatedData_PNCounter extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.PNCounter', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_PNCounter._() : super();
  factory ReplicatedData_PNCounter() => create();
  factory ReplicatedData_PNCounter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_PNCounter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_PNCounter clone() => ReplicatedData_PNCounter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_PNCounter copyWith(void Function(ReplicatedData_PNCounter) updates) => super.copyWith((message) => updates(message as ReplicatedData_PNCounter)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_PNCounter create() => ReplicatedData_PNCounter._();
  ReplicatedData_PNCounter createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_PNCounter> createRepeated() => $pb.PbList<ReplicatedData_PNCounter>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_PNCounter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_PNCounter>(create);
  static ReplicatedData_PNCounter _defaultInstance;
}

class ReplicatedData_GSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.GSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_GSet._() : super();
  factory ReplicatedData_GSet() => create();
  factory ReplicatedData_GSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_GSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_GSet clone() => ReplicatedData_GSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_GSet copyWith(void Function(ReplicatedData_GSet) updates) => super.copyWith((message) => updates(message as ReplicatedData_GSet)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_GSet create() => ReplicatedData_GSet._();
  ReplicatedData_GSet createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_GSet> createRepeated() => $pb.PbList<ReplicatedData_GSet>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_GSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_GSet>(create);
  static ReplicatedData_GSet _defaultInstance;

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

class ReplicatedData_ORSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.ORSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_ORSet._() : super();
  factory ReplicatedData_ORSet() => create();
  factory ReplicatedData_ORSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_ORSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_ORSet clone() => ReplicatedData_ORSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_ORSet copyWith(void Function(ReplicatedData_ORSet) updates) => super.copyWith((message) => updates(message as ReplicatedData_ORSet)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_ORSet create() => ReplicatedData_ORSet._();
  ReplicatedData_ORSet createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_ORSet> createRepeated() => $pb.PbList<ReplicatedData_ORSet>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_ORSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_ORSet>(create);
  static ReplicatedData_ORSet _defaultInstance;

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

class ReplicatedData_Flag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.Flag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_Flag._() : super();
  factory ReplicatedData_Flag() => create();
  factory ReplicatedData_Flag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_Flag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_Flag clone() => ReplicatedData_Flag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_Flag copyWith(void Function(ReplicatedData_Flag) updates) => super.copyWith((message) => updates(message as ReplicatedData_Flag)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_Flag create() => ReplicatedData_Flag._();
  ReplicatedData_Flag createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_Flag> createRepeated() => $pb.PbList<ReplicatedData_Flag>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_Flag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_Flag>(create);
  static ReplicatedData_Flag _defaultInstance;
}

class ReplicatedData_LWWRegister extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.LWWRegister', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_LWWRegister._() : super();
  factory ReplicatedData_LWWRegister() => create();
  factory ReplicatedData_LWWRegister.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_LWWRegister.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_LWWRegister clone() => ReplicatedData_LWWRegister()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_LWWRegister copyWith(void Function(ReplicatedData_LWWRegister) updates) => super.copyWith((message) => updates(message as ReplicatedData_LWWRegister)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_LWWRegister create() => ReplicatedData_LWWRegister._();
  ReplicatedData_LWWRegister createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_LWWRegister> createRepeated() => $pb.PbList<ReplicatedData_LWWRegister>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_LWWRegister getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_LWWRegister>(create);
  static ReplicatedData_LWWRegister _defaultInstance;

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

class ReplicatedData_ORMap extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.ORMap', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOM<TypeReference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyType', protoName: 'keyType', subBuilder: TypeReference.create)
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueType', protoName: 'valueType', subBuilder: TypeReference.create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_ORMap._() : super();
  factory ReplicatedData_ORMap() => create();
  factory ReplicatedData_ORMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_ORMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_ORMap clone() => ReplicatedData_ORMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_ORMap copyWith(void Function(ReplicatedData_ORMap) updates) => super.copyWith((message) => updates(message as ReplicatedData_ORMap)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_ORMap create() => ReplicatedData_ORMap._();
  ReplicatedData_ORMap createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_ORMap> createRepeated() => $pb.PbList<ReplicatedData_ORMap>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_ORMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_ORMap>(create);
  static ReplicatedData_ORMap _defaultInstance;

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

class ReplicatedData_Vote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData.Vote', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReplicatedData_Vote._() : super();
  factory ReplicatedData_Vote() => create();
  factory ReplicatedData_Vote.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData_Vote.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData_Vote clone() => ReplicatedData_Vote()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData_Vote copyWith(void Function(ReplicatedData_Vote) updates) => super.copyWith((message) => updates(message as ReplicatedData_Vote)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_Vote create() => ReplicatedData_Vote._();
  ReplicatedData_Vote createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData_Vote> createRepeated() => $pb.PbList<ReplicatedData_Vote>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData_Vote getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData_Vote>(create);
  static ReplicatedData_Vote _defaultInstance;
}

enum ReplicatedData_ReplicatedType {
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

class ReplicatedData extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ReplicatedData_ReplicatedType> _ReplicatedData_ReplicatedTypeByTag = {
    1 : ReplicatedData_ReplicatedType.gCounter,
    2 : ReplicatedData_ReplicatedType.pnCounter,
    3 : ReplicatedData_ReplicatedType.gSet,
    4 : ReplicatedData_ReplicatedType.orSet,
    5 : ReplicatedData_ReplicatedType.flag,
    6 : ReplicatedData_ReplicatedType.lwwRegister,
    7 : ReplicatedData_ReplicatedType.orMap,
    8 : ReplicatedData_ReplicatedType.vote,
    0 : ReplicatedData_ReplicatedType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReplicatedData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<ReplicatedData_GCounter>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gCounter', protoName: 'gCounter', subBuilder: ReplicatedData_GCounter.create)
    ..aOM<ReplicatedData_PNCounter>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pnCounter', protoName: 'pnCounter', subBuilder: ReplicatedData_PNCounter.create)
    ..aOM<ReplicatedData_GSet>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gSet', protoName: 'gSet', subBuilder: ReplicatedData_GSet.create)
    ..aOM<ReplicatedData_ORSet>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orSet', protoName: 'orSet', subBuilder: ReplicatedData_ORSet.create)
    ..aOM<ReplicatedData_Flag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flag', subBuilder: ReplicatedData_Flag.create)
    ..aOM<ReplicatedData_LWWRegister>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lwwRegister', protoName: 'lwwRegister', subBuilder: ReplicatedData_LWWRegister.create)
    ..aOM<ReplicatedData_ORMap>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'orMap', protoName: 'orMap', subBuilder: ReplicatedData_ORMap.create)
    ..aOM<ReplicatedData_Vote>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'vote', subBuilder: ReplicatedData_Vote.create)
    ..hasRequiredFields = false
  ;

  ReplicatedData._() : super();
  factory ReplicatedData() => create();
  factory ReplicatedData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicatedData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicatedData clone() => ReplicatedData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicatedData copyWith(void Function(ReplicatedData) updates) => super.copyWith((message) => updates(message as ReplicatedData)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReplicatedData create() => ReplicatedData._();
  ReplicatedData createEmptyInstance() => create();
  static $pb.PbList<ReplicatedData> createRepeated() => $pb.PbList<ReplicatedData>();
  @$core.pragma('dart2js:noInline')
  static ReplicatedData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicatedData>(create);
  static ReplicatedData _defaultInstance;

  ReplicatedData_ReplicatedType whichReplicatedType() => _ReplicatedData_ReplicatedTypeByTag[$_whichOneof(0)];
  void clearReplicatedType() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ReplicatedData_GCounter get gCounter => $_getN(0);
  @$pb.TagNumber(1)
  set gCounter(ReplicatedData_GCounter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGCounter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGCounter() => clearField(1);
  @$pb.TagNumber(1)
  ReplicatedData_GCounter ensureGCounter() => $_ensure(0);

  @$pb.TagNumber(2)
  ReplicatedData_PNCounter get pnCounter => $_getN(1);
  @$pb.TagNumber(2)
  set pnCounter(ReplicatedData_PNCounter v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPnCounter() => $_has(1);
  @$pb.TagNumber(2)
  void clearPnCounter() => clearField(2);
  @$pb.TagNumber(2)
  ReplicatedData_PNCounter ensurePnCounter() => $_ensure(1);

  @$pb.TagNumber(3)
  ReplicatedData_GSet get gSet => $_getN(2);
  @$pb.TagNumber(3)
  set gSet(ReplicatedData_GSet v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGSet() => $_has(2);
  @$pb.TagNumber(3)
  void clearGSet() => clearField(3);
  @$pb.TagNumber(3)
  ReplicatedData_GSet ensureGSet() => $_ensure(2);

  @$pb.TagNumber(4)
  ReplicatedData_ORSet get orSet => $_getN(3);
  @$pb.TagNumber(4)
  set orSet(ReplicatedData_ORSet v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrSet() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrSet() => clearField(4);
  @$pb.TagNumber(4)
  ReplicatedData_ORSet ensureOrSet() => $_ensure(3);

  @$pb.TagNumber(5)
  ReplicatedData_Flag get flag => $_getN(4);
  @$pb.TagNumber(5)
  set flag(ReplicatedData_Flag v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlag() => clearField(5);
  @$pb.TagNumber(5)
  ReplicatedData_Flag ensureFlag() => $_ensure(4);

  @$pb.TagNumber(6)
  ReplicatedData_LWWRegister get lwwRegister => $_getN(5);
  @$pb.TagNumber(6)
  set lwwRegister(ReplicatedData_LWWRegister v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLwwRegister() => $_has(5);
  @$pb.TagNumber(6)
  void clearLwwRegister() => clearField(6);
  @$pb.TagNumber(6)
  ReplicatedData_LWWRegister ensureLwwRegister() => $_ensure(5);

  @$pb.TagNumber(7)
  ReplicatedData_ORMap get orMap => $_getN(6);
  @$pb.TagNumber(7)
  set orMap(ReplicatedData_ORMap v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrMap() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrMap() => clearField(7);
  @$pb.TagNumber(7)
  ReplicatedData_ORMap ensureOrMap() => $_ensure(6);

  @$pb.TagNumber(8)
  ReplicatedData_Vote get vote => $_getN(7);
  @$pb.TagNumber(8)
  set vote(ReplicatedData_Vote v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasVote() => $_has(7);
  @$pb.TagNumber(8)
  void clearVote() => clearField(8);
  @$pb.TagNumber(8)
  ReplicatedData_Vote ensureVote() => $_ensure(7);
}

class Action extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Action', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'cloudstation.project'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<TypeReference>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commandType', protoName: 'commandType', subBuilder: TypeReference.create)
    ..aOM<TypeReference>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseType', protoName: 'responseType', subBuilder: TypeReference.create)
    ..m<$core.String, $core.String>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeBlocks', protoName: 'codeBlocks', entryClassName: 'Action.CodeBlocksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('cloudstation.project'))
    ..hasRequiredFields = false
  ;

  Action._() : super();
  factory Action() => create();
  factory Action.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Action.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Action clone() => Action()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Action copyWith(void Function(Action) updates) => super.copyWith((message) => updates(message as Action)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  Action createEmptyInstance() => create();
  static $pb.PbList<Action> createRepeated() => $pb.PbList<Action>();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  TypeReference get commandType => $_getN(1);
  @$pb.TagNumber(2)
  set commandType(TypeReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommandType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommandType() => clearField(2);
  @$pb.TagNumber(2)
  TypeReference ensureCommandType() => $_ensure(1);

  @$pb.TagNumber(3)
  TypeReference get responseType => $_getN(2);
  @$pb.TagNumber(3)
  set responseType(TypeReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseType() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseType() => clearField(3);
  @$pb.TagNumber(3)
  TypeReference ensureResponseType() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get codeBlocks => $_getMap(3);
}

