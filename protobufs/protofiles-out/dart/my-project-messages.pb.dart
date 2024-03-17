//
//  Generated code. Do not modify.
//  source: my-project-messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'my-project-messages.pbenum.dart';

export 'my-project-messages.pbenum.dart';

class HelloQromaRequest extends $pb.GeneratedMessage {
  factory HelloQromaRequest({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  HelloQromaRequest._() : super();
  factory HelloQromaRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloQromaRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloQromaRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloQromaRequest clone() => HelloQromaRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloQromaRequest copyWith(void Function(HelloQromaRequest) updates) => super.copyWith((message) => updates(message as HelloQromaRequest)) as HelloQromaRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloQromaRequest create() => HelloQromaRequest._();
  HelloQromaRequest createEmptyInstance() => create();
  static $pb.PbList<HelloQromaRequest> createRepeated() => $pb.PbList<HelloQromaRequest>();
  @$core.pragma('dart2js:noInline')
  static HelloQromaRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloQromaRequest>(create);
  static HelloQromaRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

class HelloQromaResponse extends $pb.GeneratedMessage {
  factory HelloQromaResponse({
    $core.String? response,
    $core.int? callCount,
    $core.int? nameLength,
  }) {
    final $result = create();
    if (response != null) {
      $result.response = response;
    }
    if (callCount != null) {
      $result.callCount = callCount;
    }
    if (nameLength != null) {
      $result.nameLength = nameLength;
    }
    return $result;
  }
  HelloQromaResponse._() : super();
  factory HelloQromaResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HelloQromaResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HelloQromaResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'response')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'callCount', $pb.PbFieldType.OU3, protoName: 'callCount')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'nameLength', $pb.PbFieldType.OU3, protoName: 'nameLength')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HelloQromaResponse clone() => HelloQromaResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HelloQromaResponse copyWith(void Function(HelloQromaResponse) updates) => super.copyWith((message) => updates(message as HelloQromaResponse)) as HelloQromaResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HelloQromaResponse create() => HelloQromaResponse._();
  HelloQromaResponse createEmptyInstance() => create();
  static $pb.PbList<HelloQromaResponse> createRepeated() => $pb.PbList<HelloQromaResponse>();
  @$core.pragma('dart2js:noInline')
  static HelloQromaResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HelloQromaResponse>(create);
  static HelloQromaResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get response => $_getSZ(0);
  @$pb.TagNumber(1)
  set response($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get callCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set callCount($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCallCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get nameLength => $_getIZ(2);
  @$pb.TagNumber(3)
  set nameLength($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNameLength() => $_has(2);
  @$pb.TagNumber(3)
  void clearNameLength() => clearField(3);
}

class MathRequest extends $pb.GeneratedMessage {
  factory MathRequest({
    $core.int? a,
    $core.int? b,
    MathOperation? op,
  }) {
    final $result = create();
    if (a != null) {
      $result.a = a;
    }
    if (b != null) {
      $result.b = b;
    }
    if (op != null) {
      $result.op = op;
    }
    return $result;
  }
  MathRequest._() : super();
  factory MathRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'a', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'b', $pb.PbFieldType.OU3)
    ..e<MathOperation>(3, _omitFieldNames ? '' : 'op', $pb.PbFieldType.OE, defaultOrMaker: MathOperation.MathOp_NotSet, valueOf: MathOperation.valueOf, enumValues: MathOperation.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathRequest clone() => MathRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathRequest copyWith(void Function(MathRequest) updates) => super.copyWith((message) => updates(message as MathRequest)) as MathRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathRequest create() => MathRequest._();
  MathRequest createEmptyInstance() => create();
  static $pb.PbList<MathRequest> createRepeated() => $pb.PbList<MathRequest>();
  @$core.pragma('dart2js:noInline')
  static MathRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathRequest>(create);
  static MathRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get a => $_getIZ(0);
  @$pb.TagNumber(1)
  set a($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasA() => $_has(0);
  @$pb.TagNumber(1)
  void clearA() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get b => $_getIZ(1);
  @$pb.TagNumber(2)
  set b($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasB() => $_has(1);
  @$pb.TagNumber(2)
  void clearB() => clearField(2);

  @$pb.TagNumber(3)
  MathOperation get op => $_getN(2);
  @$pb.TagNumber(3)
  set op(MathOperation v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOp() => $_has(2);
  @$pb.TagNumber(3)
  void clearOp() => clearField(3);
}

class MathResult_Add extends $pb.GeneratedMessage {
  factory MathResult_Add({
    $core.int? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MathResult_Add._() : super();
  factory MathResult_Add.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_Add.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_Add', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_Add clone() => MathResult_Add()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_Add copyWith(void Function(MathResult_Add) updates) => super.copyWith((message) => updates(message as MathResult_Add)) as MathResult_Add;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_Add create() => MathResult_Add._();
  MathResult_Add createEmptyInstance() => create();
  static $pb.PbList<MathResult_Add> createRepeated() => $pb.PbList<MathResult_Add>();
  @$core.pragma('dart2js:noInline')
  static MathResult_Add getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_Add>(create);
  static MathResult_Add? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MathResult_Subtract extends $pb.GeneratedMessage {
  factory MathResult_Subtract({
    $core.int? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  MathResult_Subtract._() : super();
  factory MathResult_Subtract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_Subtract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_Subtract', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'result', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_Subtract clone() => MathResult_Subtract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_Subtract copyWith(void Function(MathResult_Subtract) updates) => super.copyWith((message) => updates(message as MathResult_Subtract)) as MathResult_Subtract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_Subtract create() => MathResult_Subtract._();
  MathResult_Subtract createEmptyInstance() => create();
  static $pb.PbList<MathResult_Subtract> createRepeated() => $pb.PbList<MathResult_Subtract>();
  @$core.pragma('dart2js:noInline')
  static MathResult_Subtract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_Subtract>(create);
  static MathResult_Subtract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get result => $_getIZ(0);
  @$pb.TagNumber(1)
  set result($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class MathResult_AddAndSubtract extends $pb.GeneratedMessage {
  factory MathResult_AddAndSubtract({
    $core.int? addResult,
    $core.int? subtractResult,
  }) {
    final $result = create();
    if (addResult != null) {
      $result.addResult = addResult;
    }
    if (subtractResult != null) {
      $result.subtractResult = subtractResult;
    }
    return $result;
  }
  MathResult_AddAndSubtract._() : super();
  factory MathResult_AddAndSubtract.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResult_AddAndSubtract.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResult_AddAndSubtract', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'addResult', $pb.PbFieldType.OU3, protoName: 'addResult')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'subtractResult', $pb.PbFieldType.OU3, protoName: 'subtractResult')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResult_AddAndSubtract clone() => MathResult_AddAndSubtract()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResult_AddAndSubtract copyWith(void Function(MathResult_AddAndSubtract) updates) => super.copyWith((message) => updates(message as MathResult_AddAndSubtract)) as MathResult_AddAndSubtract;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResult_AddAndSubtract create() => MathResult_AddAndSubtract._();
  MathResult_AddAndSubtract createEmptyInstance() => create();
  static $pb.PbList<MathResult_AddAndSubtract> createRepeated() => $pb.PbList<MathResult_AddAndSubtract>();
  @$core.pragma('dart2js:noInline')
  static MathResult_AddAndSubtract getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResult_AddAndSubtract>(create);
  static MathResult_AddAndSubtract? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get addResult => $_getIZ(0);
  @$pb.TagNumber(1)
  set addResult($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddResult() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get subtractResult => $_getIZ(1);
  @$pb.TagNumber(2)
  set subtractResult($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtractResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtractResult() => clearField(2);
}

enum MathResponse_Response {
  addResult, 
  subtractResult, 
  addAndSubtractResult, 
  notSet
}

class MathResponse extends $pb.GeneratedMessage {
  factory MathResponse({
    MathResult_Add? addResult,
    MathResult_Subtract? subtractResult,
    MathResult_AddAndSubtract? addAndSubtractResult,
  }) {
    final $result = create();
    if (addResult != null) {
      $result.addResult = addResult;
    }
    if (subtractResult != null) {
      $result.subtractResult = subtractResult;
    }
    if (addAndSubtractResult != null) {
      $result.addAndSubtractResult = addAndSubtractResult;
    }
    return $result;
  }
  MathResponse._() : super();
  factory MathResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MathResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MathResponse_Response> _MathResponse_ResponseByTag = {
    1 : MathResponse_Response.addResult,
    2 : MathResponse_Response.subtractResult,
    3 : MathResponse_Response.addAndSubtractResult,
    0 : MathResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MathResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<MathResult_Add>(1, _omitFieldNames ? '' : 'addResult', protoName: 'addResult', subBuilder: MathResult_Add.create)
    ..aOM<MathResult_Subtract>(2, _omitFieldNames ? '' : 'subtractResult', protoName: 'subtractResult', subBuilder: MathResult_Subtract.create)
    ..aOM<MathResult_AddAndSubtract>(3, _omitFieldNames ? '' : 'addAndSubtractResult', protoName: 'addAndSubtractResult', subBuilder: MathResult_AddAndSubtract.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MathResponse clone() => MathResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MathResponse copyWith(void Function(MathResponse) updates) => super.copyWith((message) => updates(message as MathResponse)) as MathResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MathResponse create() => MathResponse._();
  MathResponse createEmptyInstance() => create();
  static $pb.PbList<MathResponse> createRepeated() => $pb.PbList<MathResponse>();
  @$core.pragma('dart2js:noInline')
  static MathResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MathResponse>(create);
  static MathResponse? _defaultInstance;

  MathResponse_Response whichResponse() => _MathResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  MathResult_Add get addResult => $_getN(0);
  @$pb.TagNumber(1)
  set addResult(MathResult_Add v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddResult() => clearField(1);
  @$pb.TagNumber(1)
  MathResult_Add ensureAddResult() => $_ensure(0);

  @$pb.TagNumber(2)
  MathResult_Subtract get subtractResult => $_getN(1);
  @$pb.TagNumber(2)
  set subtractResult(MathResult_Subtract v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSubtractResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubtractResult() => clearField(2);
  @$pb.TagNumber(2)
  MathResult_Subtract ensureSubtractResult() => $_ensure(1);

  @$pb.TagNumber(3)
  MathResult_AddAndSubtract get addAndSubtractResult => $_getN(2);
  @$pb.TagNumber(3)
  set addAndSubtractResult(MathResult_AddAndSubtract v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddAndSubtractResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddAndSubtractResult() => clearField(3);
  @$pb.TagNumber(3)
  MathResult_AddAndSubtract ensureAddAndSubtractResult() => $_ensure(2);
}

class BoardDetails extends $pb.GeneratedMessage {
  factory BoardDetails({
    $core.String? boardName,
    $core.bool? hasRgb,
  }) {
    final $result = create();
    if (boardName != null) {
      $result.boardName = boardName;
    }
    if (hasRgb != null) {
      $result.hasRgb = hasRgb;
    }
    return $result;
  }
  BoardDetails._() : super();
  factory BoardDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BoardDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BoardDetails', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'boardName', protoName: 'boardName')
    ..aOB(2, _omitFieldNames ? '' : 'hasRgb', protoName: 'hasRgb')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BoardDetails clone() => BoardDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BoardDetails copyWith(void Function(BoardDetails) updates) => super.copyWith((message) => updates(message as BoardDetails)) as BoardDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoardDetails create() => BoardDetails._();
  BoardDetails createEmptyInstance() => create();
  static $pb.PbList<BoardDetails> createRepeated() => $pb.PbList<BoardDetails>();
  @$core.pragma('dart2js:noInline')
  static BoardDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BoardDetails>(create);
  static BoardDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get boardName => $_getSZ(0);
  @$pb.TagNumber(1)
  set boardName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasRgb => $_getBF(1);
  @$pb.TagNumber(2)
  set hasRgb($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHasRgb() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasRgb() => clearField(2);
}

class MyProjectDetails extends $pb.GeneratedMessage {
  factory MyProjectDetails({
    $core.String? projectName,
  }) {
    final $result = create();
    if (projectName != null) {
      $result.projectName = projectName;
    }
    return $result;
  }
  MyProjectDetails._() : super();
  factory MyProjectDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectDetails', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'projectName', protoName: 'projectName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectDetails clone() => MyProjectDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectDetails copyWith(void Function(MyProjectDetails) updates) => super.copyWith((message) => updates(message as MyProjectDetails)) as MyProjectDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectDetails create() => MyProjectDetails._();
  MyProjectDetails createEmptyInstance() => create();
  static $pb.PbList<MyProjectDetails> createRepeated() => $pb.PbList<MyProjectDetails>();
  @$core.pragma('dart2js:noInline')
  static MyProjectDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectDetails>(create);
  static MyProjectDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get projectName => $_getSZ(0);
  @$pb.TagNumber(1)
  set projectName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectName() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectName() => clearField(1);
}

class MyProjectConfiguration extends $pb.GeneratedMessage {
  factory MyProjectConfiguration({
    $core.String? userName,
    $core.int? startupRed,
    $core.int? startupGreen,
    $core.int? startupBlue,
  }) {
    final $result = create();
    if (userName != null) {
      $result.userName = userName;
    }
    if (startupRed != null) {
      $result.startupRed = startupRed;
    }
    if (startupGreen != null) {
      $result.startupGreen = startupGreen;
    }
    if (startupBlue != null) {
      $result.startupBlue = startupBlue;
    }
    return $result;
  }
  MyProjectConfiguration._() : super();
  factory MyProjectConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectConfiguration', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userName', protoName: 'userName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'startupRed', $pb.PbFieldType.OU3, protoName: 'startupRed')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'startupGreen', $pb.PbFieldType.OU3, protoName: 'startupGreen')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'startupBlue', $pb.PbFieldType.OU3, protoName: 'startupBlue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectConfiguration clone() => MyProjectConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectConfiguration copyWith(void Function(MyProjectConfiguration) updates) => super.copyWith((message) => updates(message as MyProjectConfiguration)) as MyProjectConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectConfiguration create() => MyProjectConfiguration._();
  MyProjectConfiguration createEmptyInstance() => create();
  static $pb.PbList<MyProjectConfiguration> createRepeated() => $pb.PbList<MyProjectConfiguration>();
  @$core.pragma('dart2js:noInline')
  static MyProjectConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectConfiguration>(create);
  static MyProjectConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get startupRed => $_getIZ(1);
  @$pb.TagNumber(2)
  set startupRed($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartupRed() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartupRed() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get startupGreen => $_getIZ(2);
  @$pb.TagNumber(3)
  set startupGreen($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStartupGreen() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartupGreen() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get startupBlue => $_getIZ(3);
  @$pb.TagNumber(4)
  set startupBlue($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartupBlue() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartupBlue() => clearField(4);
}

class GetProjectDetailsResponse extends $pb.GeneratedMessage {
  factory GetProjectDetailsResponse({
    MyProjectDetails? projectDetails,
    MyProjectConfiguration? currentConfiguration,
  }) {
    final $result = create();
    if (projectDetails != null) {
      $result.projectDetails = projectDetails;
    }
    if (currentConfiguration != null) {
      $result.currentConfiguration = currentConfiguration;
    }
    return $result;
  }
  GetProjectDetailsResponse._() : super();
  factory GetProjectDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetProjectDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetProjectDetailsResponse', createEmptyInstance: create)
    ..aOM<MyProjectDetails>(1, _omitFieldNames ? '' : 'projectDetails', protoName: 'projectDetails', subBuilder: MyProjectDetails.create)
    ..aOM<MyProjectConfiguration>(2, _omitFieldNames ? '' : 'currentConfiguration', protoName: 'currentConfiguration', subBuilder: MyProjectConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetProjectDetailsResponse clone() => GetProjectDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetProjectDetailsResponse copyWith(void Function(GetProjectDetailsResponse) updates) => super.copyWith((message) => updates(message as GetProjectDetailsResponse)) as GetProjectDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetProjectDetailsResponse create() => GetProjectDetailsResponse._();
  GetProjectDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<GetProjectDetailsResponse> createRepeated() => $pb.PbList<GetProjectDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetProjectDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetProjectDetailsResponse>(create);
  static GetProjectDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  MyProjectDetails get projectDetails => $_getN(0);
  @$pb.TagNumber(1)
  set projectDetails(MyProjectDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasProjectDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectDetails() => clearField(1);
  @$pb.TagNumber(1)
  MyProjectDetails ensureProjectDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  MyProjectConfiguration get currentConfiguration => $_getN(1);
  @$pb.TagNumber(2)
  set currentConfiguration(MyProjectConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentConfiguration() => clearField(2);
  @$pb.TagNumber(2)
  MyProjectConfiguration ensureCurrentConfiguration() => $_ensure(1);
}

class SetBoardLightColorRequest extends $pb.GeneratedMessage {
  factory SetBoardLightColorRequest({
    $core.int? red,
    $core.int? green,
    $core.int? blue,
  }) {
    final $result = create();
    if (red != null) {
      $result.red = red;
    }
    if (green != null) {
      $result.green = green;
    }
    if (blue != null) {
      $result.blue = blue;
    }
    return $result;
  }
  SetBoardLightColorRequest._() : super();
  factory SetBoardLightColorRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBoardLightColorRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBoardLightColorRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'red', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'green', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'blue', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBoardLightColorRequest clone() => SetBoardLightColorRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBoardLightColorRequest copyWith(void Function(SetBoardLightColorRequest) updates) => super.copyWith((message) => updates(message as SetBoardLightColorRequest)) as SetBoardLightColorRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorRequest create() => SetBoardLightColorRequest._();
  SetBoardLightColorRequest createEmptyInstance() => create();
  static $pb.PbList<SetBoardLightColorRequest> createRepeated() => $pb.PbList<SetBoardLightColorRequest>();
  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBoardLightColorRequest>(create);
  static SetBoardLightColorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get red => $_getIZ(0);
  @$pb.TagNumber(1)
  set red($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get green => $_getIZ(1);
  @$pb.TagNumber(2)
  set green($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get blue => $_getIZ(2);
  @$pb.TagNumber(3)
  set blue($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => clearField(3);
}

class SetBoardLightColorResponse extends $pb.GeneratedMessage {
  factory SetBoardLightColorResponse({
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SetBoardLightColorResponse._() : super();
  factory SetBoardLightColorResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetBoardLightColorResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetBoardLightColorResponse', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetBoardLightColorResponse clone() => SetBoardLightColorResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetBoardLightColorResponse copyWith(void Function(SetBoardLightColorResponse) updates) => super.copyWith((message) => updates(message as SetBoardLightColorResponse)) as SetBoardLightColorResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorResponse create() => SetBoardLightColorResponse._();
  SetBoardLightColorResponse createEmptyInstance() => create();
  static $pb.PbList<SetBoardLightColorResponse> createRepeated() => $pb.PbList<SetBoardLightColorResponse>();
  @$core.pragma('dart2js:noInline')
  static SetBoardLightColorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetBoardLightColorResponse>(create);
  static SetBoardLightColorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class InvalidCommandResponse extends $pb.GeneratedMessage {
  factory InvalidCommandResponse({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  InvalidCommandResponse._() : super();
  factory InvalidCommandResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvalidCommandResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvalidCommandResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvalidCommandResponse clone() => InvalidCommandResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvalidCommandResponse copyWith(void Function(InvalidCommandResponse) updates) => super.copyWith((message) => updates(message as InvalidCommandResponse)) as InvalidCommandResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvalidCommandResponse create() => InvalidCommandResponse._();
  InvalidCommandResponse createEmptyInstance() => create();
  static $pb.PbList<InvalidCommandResponse> createRepeated() => $pb.PbList<InvalidCommandResponse>();
  @$core.pragma('dart2js:noInline')
  static InvalidCommandResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvalidCommandResponse>(create);
  static InvalidCommandResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

enum MyProjectCommand_Command {
  noArgCommand, 
  helloQromaRequest, 
  mathRequest, 
  setBoardLightColorRequest, 
  setMyProjectConfigurationRequest, 
  notSet
}

class MyProjectCommand extends $pb.GeneratedMessage {
  factory MyProjectCommand({
    NoArgCommands? noArgCommand,
    HelloQromaRequest? helloQromaRequest,
    MathRequest? mathRequest,
    SetBoardLightColorRequest? setBoardLightColorRequest,
    MyProjectConfiguration? setMyProjectConfigurationRequest,
  }) {
    final $result = create();
    if (noArgCommand != null) {
      $result.noArgCommand = noArgCommand;
    }
    if (helloQromaRequest != null) {
      $result.helloQromaRequest = helloQromaRequest;
    }
    if (mathRequest != null) {
      $result.mathRequest = mathRequest;
    }
    if (setBoardLightColorRequest != null) {
      $result.setBoardLightColorRequest = setBoardLightColorRequest;
    }
    if (setMyProjectConfigurationRequest != null) {
      $result.setMyProjectConfigurationRequest = setMyProjectConfigurationRequest;
    }
    return $result;
  }
  MyProjectCommand._() : super();
  factory MyProjectCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectCommand_Command> _MyProjectCommand_CommandByTag = {
    1 : MyProjectCommand_Command.noArgCommand,
    2 : MyProjectCommand_Command.helloQromaRequest,
    3 : MyProjectCommand_Command.mathRequest,
    4 : MyProjectCommand_Command.setBoardLightColorRequest,
    5 : MyProjectCommand_Command.setMyProjectConfigurationRequest,
    0 : MyProjectCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..e<NoArgCommands>(1, _omitFieldNames ? '' : 'noArgCommand', $pb.PbFieldType.OE, protoName: 'noArgCommand', defaultOrMaker: NoArgCommands.Nac_NotSet, valueOf: NoArgCommands.valueOf, enumValues: NoArgCommands.values)
    ..aOM<HelloQromaRequest>(2, _omitFieldNames ? '' : 'helloQromaRequest', protoName: 'helloQromaRequest', subBuilder: HelloQromaRequest.create)
    ..aOM<MathRequest>(3, _omitFieldNames ? '' : 'mathRequest', protoName: 'mathRequest', subBuilder: MathRequest.create)
    ..aOM<SetBoardLightColorRequest>(4, _omitFieldNames ? '' : 'setBoardLightColorRequest', protoName: 'setBoardLightColorRequest', subBuilder: SetBoardLightColorRequest.create)
    ..aOM<MyProjectConfiguration>(5, _omitFieldNames ? '' : 'setMyProjectConfigurationRequest', protoName: 'setMyProjectConfigurationRequest', subBuilder: MyProjectConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectCommand clone() => MyProjectCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectCommand copyWith(void Function(MyProjectCommand) updates) => super.copyWith((message) => updates(message as MyProjectCommand)) as MyProjectCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectCommand create() => MyProjectCommand._();
  MyProjectCommand createEmptyInstance() => create();
  static $pb.PbList<MyProjectCommand> createRepeated() => $pb.PbList<MyProjectCommand>();
  @$core.pragma('dart2js:noInline')
  static MyProjectCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectCommand>(create);
  static MyProjectCommand? _defaultInstance;

  MyProjectCommand_Command whichCommand() => _MyProjectCommand_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NoArgCommands get noArgCommand => $_getN(0);
  @$pb.TagNumber(1)
  set noArgCommand(NoArgCommands v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNoArgCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoArgCommand() => clearField(1);

  @$pb.TagNumber(2)
  HelloQromaRequest get helloQromaRequest => $_getN(1);
  @$pb.TagNumber(2)
  set helloQromaRequest(HelloQromaRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHelloQromaRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelloQromaRequest() => clearField(2);
  @$pb.TagNumber(2)
  HelloQromaRequest ensureHelloQromaRequest() => $_ensure(1);

  @$pb.TagNumber(3)
  MathRequest get mathRequest => $_getN(2);
  @$pb.TagNumber(3)
  set mathRequest(MathRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMathRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearMathRequest() => clearField(3);
  @$pb.TagNumber(3)
  MathRequest ensureMathRequest() => $_ensure(2);

  @$pb.TagNumber(4)
  SetBoardLightColorRequest get setBoardLightColorRequest => $_getN(3);
  @$pb.TagNumber(4)
  set setBoardLightColorRequest(SetBoardLightColorRequest v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSetBoardLightColorRequest() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetBoardLightColorRequest() => clearField(4);
  @$pb.TagNumber(4)
  SetBoardLightColorRequest ensureSetBoardLightColorRequest() => $_ensure(3);

  @$pb.TagNumber(5)
  MyProjectConfiguration get setMyProjectConfigurationRequest => $_getN(4);
  @$pb.TagNumber(5)
  set setMyProjectConfigurationRequest(MyProjectConfiguration v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetMyProjectConfigurationRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetMyProjectConfigurationRequest() => clearField(5);
  @$pb.TagNumber(5)
  MyProjectConfiguration ensureSetMyProjectConfigurationRequest() => $_ensure(4);
}

enum MyProjectResponse_Response {
  invalidCommandResponse, 
  helloQromaResponse, 
  mathResponse, 
  getBoardDetailsResponse, 
  setBoardLightColorResponse, 
  getProjectDetailsResponse, 
  notSet
}

class MyProjectResponse extends $pb.GeneratedMessage {
  factory MyProjectResponse({
    InvalidCommandResponse? invalidCommandResponse,
    HelloQromaResponse? helloQromaResponse,
    MathResponse? mathResponse,
    BoardDetails? getBoardDetailsResponse,
    SetBoardLightColorResponse? setBoardLightColorResponse,
    GetProjectDetailsResponse? getProjectDetailsResponse,
  }) {
    final $result = create();
    if (invalidCommandResponse != null) {
      $result.invalidCommandResponse = invalidCommandResponse;
    }
    if (helloQromaResponse != null) {
      $result.helloQromaResponse = helloQromaResponse;
    }
    if (mathResponse != null) {
      $result.mathResponse = mathResponse;
    }
    if (getBoardDetailsResponse != null) {
      $result.getBoardDetailsResponse = getBoardDetailsResponse;
    }
    if (setBoardLightColorResponse != null) {
      $result.setBoardLightColorResponse = setBoardLightColorResponse;
    }
    if (getProjectDetailsResponse != null) {
      $result.getProjectDetailsResponse = getProjectDetailsResponse;
    }
    return $result;
  }
  MyProjectResponse._() : super();
  factory MyProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectResponse_Response> _MyProjectResponse_ResponseByTag = {
    1 : MyProjectResponse_Response.invalidCommandResponse,
    2 : MyProjectResponse_Response.helloQromaResponse,
    3 : MyProjectResponse_Response.mathResponse,
    4 : MyProjectResponse_Response.getBoardDetailsResponse,
    5 : MyProjectResponse_Response.setBoardLightColorResponse,
    6 : MyProjectResponse_Response.getProjectDetailsResponse,
    0 : MyProjectResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<InvalidCommandResponse>(1, _omitFieldNames ? '' : 'invalidCommandResponse', protoName: 'invalidCommandResponse', subBuilder: InvalidCommandResponse.create)
    ..aOM<HelloQromaResponse>(2, _omitFieldNames ? '' : 'helloQromaResponse', protoName: 'helloQromaResponse', subBuilder: HelloQromaResponse.create)
    ..aOM<MathResponse>(3, _omitFieldNames ? '' : 'mathResponse', protoName: 'mathResponse', subBuilder: MathResponse.create)
    ..aOM<BoardDetails>(4, _omitFieldNames ? '' : 'getBoardDetailsResponse', protoName: 'getBoardDetailsResponse', subBuilder: BoardDetails.create)
    ..aOM<SetBoardLightColorResponse>(5, _omitFieldNames ? '' : 'setBoardLightColorResponse', protoName: 'setBoardLightColorResponse', subBuilder: SetBoardLightColorResponse.create)
    ..aOM<GetProjectDetailsResponse>(6, _omitFieldNames ? '' : 'getProjectDetailsResponse', protoName: 'getProjectDetailsResponse', subBuilder: GetProjectDetailsResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MyProjectResponse clone() => MyProjectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MyProjectResponse copyWith(void Function(MyProjectResponse) updates) => super.copyWith((message) => updates(message as MyProjectResponse)) as MyProjectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MyProjectResponse create() => MyProjectResponse._();
  MyProjectResponse createEmptyInstance() => create();
  static $pb.PbList<MyProjectResponse> createRepeated() => $pb.PbList<MyProjectResponse>();
  @$core.pragma('dart2js:noInline')
  static MyProjectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MyProjectResponse>(create);
  static MyProjectResponse? _defaultInstance;

  MyProjectResponse_Response whichResponse() => _MyProjectResponse_ResponseByTag[$_whichOneof(0)]!;
  void clearResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  InvalidCommandResponse get invalidCommandResponse => $_getN(0);
  @$pb.TagNumber(1)
  set invalidCommandResponse(InvalidCommandResponse v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInvalidCommandResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvalidCommandResponse() => clearField(1);
  @$pb.TagNumber(1)
  InvalidCommandResponse ensureInvalidCommandResponse() => $_ensure(0);

  @$pb.TagNumber(2)
  HelloQromaResponse get helloQromaResponse => $_getN(1);
  @$pb.TagNumber(2)
  set helloQromaResponse(HelloQromaResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHelloQromaResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearHelloQromaResponse() => clearField(2);
  @$pb.TagNumber(2)
  HelloQromaResponse ensureHelloQromaResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  MathResponse get mathResponse => $_getN(2);
  @$pb.TagNumber(3)
  set mathResponse(MathResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMathResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearMathResponse() => clearField(3);
  @$pb.TagNumber(3)
  MathResponse ensureMathResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  BoardDetails get getBoardDetailsResponse => $_getN(3);
  @$pb.TagNumber(4)
  set getBoardDetailsResponse(BoardDetails v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetBoardDetailsResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetBoardDetailsResponse() => clearField(4);
  @$pb.TagNumber(4)
  BoardDetails ensureGetBoardDetailsResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  SetBoardLightColorResponse get setBoardLightColorResponse => $_getN(4);
  @$pb.TagNumber(5)
  set setBoardLightColorResponse(SetBoardLightColorResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetBoardLightColorResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetBoardLightColorResponse() => clearField(5);
  @$pb.TagNumber(5)
  SetBoardLightColorResponse ensureSetBoardLightColorResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  GetProjectDetailsResponse get getProjectDetailsResponse => $_getN(5);
  @$pb.TagNumber(6)
  set getProjectDetailsResponse(GetProjectDetailsResponse v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGetProjectDetailsResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetProjectDetailsResponse() => clearField(6);
  @$pb.TagNumber(6)
  GetProjectDetailsResponse ensureGetProjectDetailsResponse() => $_ensure(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
