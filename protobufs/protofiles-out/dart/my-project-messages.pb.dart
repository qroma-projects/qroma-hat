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

class UpdateConfiguration extends $pb.GeneratedMessage {
  factory UpdateConfiguration({
    UpdateType? updateType,
    $core.int? updateIntervalInMs,
  }) {
    final $result = create();
    if (updateType != null) {
      $result.updateType = updateType;
    }
    if (updateIntervalInMs != null) {
      $result.updateIntervalInMs = updateIntervalInMs;
    }
    return $result;
  }
  UpdateConfiguration._() : super();
  factory UpdateConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateConfiguration', createEmptyInstance: create)
    ..e<UpdateType>(1, _omitFieldNames ? '' : 'updateType', $pb.PbFieldType.OE, protoName: 'updateType', defaultOrMaker: UpdateType.UpdateType_NotSet, valueOf: UpdateType.valueOf, enumValues: UpdateType.values)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'updateIntervalInMs', $pb.PbFieldType.OU3, protoName: 'updateIntervalInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateConfiguration clone() => UpdateConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateConfiguration copyWith(void Function(UpdateConfiguration) updates) => super.copyWith((message) => updates(message as UpdateConfiguration)) as UpdateConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateConfiguration create() => UpdateConfiguration._();
  UpdateConfiguration createEmptyInstance() => create();
  static $pb.PbList<UpdateConfiguration> createRepeated() => $pb.PbList<UpdateConfiguration>();
  @$core.pragma('dart2js:noInline')
  static UpdateConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateConfiguration>(create);
  static UpdateConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  UpdateType get updateType => $_getN(0);
  @$pb.TagNumber(1)
  set updateType(UpdateType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateType() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get updateIntervalInMs => $_getIZ(1);
  @$pb.TagNumber(2)
  set updateIntervalInMs($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateIntervalInMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateIntervalInMs() => clearField(2);
}

class SetUpdateConfiguration extends $pb.GeneratedMessage {
  factory SetUpdateConfiguration({
    UpdateConfiguration? updateConfiguration,
    $core.bool? saveConfiguration,
  }) {
    final $result = create();
    if (updateConfiguration != null) {
      $result.updateConfiguration = updateConfiguration;
    }
    if (saveConfiguration != null) {
      $result.saveConfiguration = saveConfiguration;
    }
    return $result;
  }
  SetUpdateConfiguration._() : super();
  factory SetUpdateConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetUpdateConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetUpdateConfiguration', createEmptyInstance: create)
    ..aOM<UpdateConfiguration>(1, _omitFieldNames ? '' : 'updateConfiguration', protoName: 'updateConfiguration', subBuilder: UpdateConfiguration.create)
    ..aOB(2, _omitFieldNames ? '' : 'saveConfiguration', protoName: 'saveConfiguration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetUpdateConfiguration clone() => SetUpdateConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetUpdateConfiguration copyWith(void Function(SetUpdateConfiguration) updates) => super.copyWith((message) => updates(message as SetUpdateConfiguration)) as SetUpdateConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetUpdateConfiguration create() => SetUpdateConfiguration._();
  SetUpdateConfiguration createEmptyInstance() => create();
  static $pb.PbList<SetUpdateConfiguration> createRepeated() => $pb.PbList<SetUpdateConfiguration>();
  @$core.pragma('dart2js:noInline')
  static SetUpdateConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetUpdateConfiguration>(create);
  static SetUpdateConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  UpdateConfiguration get updateConfiguration => $_getN(0);
  @$pb.TagNumber(1)
  set updateConfiguration(UpdateConfiguration v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateConfiguration() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateConfiguration() => clearField(1);
  @$pb.TagNumber(1)
  UpdateConfiguration ensureUpdateConfiguration() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get saveConfiguration => $_getBF(1);
  @$pb.TagNumber(2)
  set saveConfiguration($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSaveConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearSaveConfiguration() => clearField(2);
}

class HatConfiguration extends $pb.GeneratedMessage {
  factory HatConfiguration({
    $core.String? imagePath,
    $core.bool? rotateImage,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    if (rotateImage != null) {
      $result.rotateImage = rotateImage;
    }
    return $result;
  }
  HatConfiguration._() : super();
  factory HatConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HatConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HatConfiguration', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..aOB(2, _omitFieldNames ? '' : 'rotateImage', protoName: 'rotateImage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HatConfiguration clone() => HatConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HatConfiguration copyWith(void Function(HatConfiguration) updates) => super.copyWith((message) => updates(message as HatConfiguration)) as HatConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HatConfiguration create() => HatConfiguration._();
  HatConfiguration createEmptyInstance() => create();
  static $pb.PbList<HatConfiguration> createRepeated() => $pb.PbList<HatConfiguration>();
  @$core.pragma('dart2js:noInline')
  static HatConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HatConfiguration>(create);
  static HatConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get rotateImage => $_getBF(1);
  @$pb.TagNumber(2)
  set rotateImage($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRotateImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearRotateImage() => clearField(2);
}

class SetHatRotateImageCommand extends $pb.GeneratedMessage {
  factory SetHatRotateImageCommand({
    $core.bool? rotateImage,
  }) {
    final $result = create();
    if (rotateImage != null) {
      $result.rotateImage = rotateImage;
    }
    return $result;
  }
  SetHatRotateImageCommand._() : super();
  factory SetHatRotateImageCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetHatRotateImageCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetHatRotateImageCommand', createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'rotateImage', protoName: 'rotateImage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetHatRotateImageCommand clone() => SetHatRotateImageCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetHatRotateImageCommand copyWith(void Function(SetHatRotateImageCommand) updates) => super.copyWith((message) => updates(message as SetHatRotateImageCommand)) as SetHatRotateImageCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetHatRotateImageCommand create() => SetHatRotateImageCommand._();
  SetHatRotateImageCommand createEmptyInstance() => create();
  static $pb.PbList<SetHatRotateImageCommand> createRepeated() => $pb.PbList<SetHatRotateImageCommand>();
  @$core.pragma('dart2js:noInline')
  static SetHatRotateImageCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetHatRotateImageCommand>(create);
  static SetHatRotateImageCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get rotateImage => $_getBF(0);
  @$pb.TagNumber(1)
  set rotateImage($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRotateImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearRotateImage() => clearField(1);
}

class SetHatImageCommand extends $pb.GeneratedMessage {
  factory SetHatImageCommand({
    $core.String? imagePath,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    return $result;
  }
  SetHatImageCommand._() : super();
  factory SetHatImageCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetHatImageCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetHatImageCommand', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetHatImageCommand clone() => SetHatImageCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetHatImageCommand copyWith(void Function(SetHatImageCommand) updates) => super.copyWith((message) => updates(message as SetHatImageCommand)) as SetHatImageCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetHatImageCommand create() => SetHatImageCommand._();
  SetHatImageCommand createEmptyInstance() => create();
  static $pb.PbList<SetHatImageCommand> createRepeated() => $pb.PbList<SetHatImageCommand>();
  @$core.pragma('dart2js:noInline')
  static SetHatImageCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetHatImageCommand>(create);
  static SetHatImageCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);
}

class GetDgsrImageValidationResultCommand extends $pb.GeneratedMessage {
  factory GetDgsrImageValidationResultCommand({
    $core.String? imagePath,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    return $result;
  }
  GetDgsrImageValidationResultCommand._() : super();
  factory GetDgsrImageValidationResultCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDgsrImageValidationResultCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDgsrImageValidationResultCommand', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDgsrImageValidationResultCommand clone() => GetDgsrImageValidationResultCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDgsrImageValidationResultCommand copyWith(void Function(GetDgsrImageValidationResultCommand) updates) => super.copyWith((message) => updates(message as GetDgsrImageValidationResultCommand)) as GetDgsrImageValidationResultCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDgsrImageValidationResultCommand create() => GetDgsrImageValidationResultCommand._();
  GetDgsrImageValidationResultCommand createEmptyInstance() => create();
  static $pb.PbList<GetDgsrImageValidationResultCommand> createRepeated() => $pb.PbList<GetDgsrImageValidationResultCommand>();
  @$core.pragma('dart2js:noInline')
  static GetDgsrImageValidationResultCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDgsrImageValidationResultCommand>(create);
  static GetDgsrImageValidationResultCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);
}

enum MyProjectCommand_Command {
  noArgCommand, 
  setHatImage, 
  setHatRotateImage, 
  getDgsrImageValidationResult, 
  notSet
}

class MyProjectCommand extends $pb.GeneratedMessage {
  factory MyProjectCommand({
    NoArgCommands? noArgCommand,
    SetHatImageCommand? setHatImage,
    SetHatRotateImageCommand? setHatRotateImage,
    GetDgsrImageValidationResultCommand? getDgsrImageValidationResult,
  }) {
    final $result = create();
    if (noArgCommand != null) {
      $result.noArgCommand = noArgCommand;
    }
    if (setHatImage != null) {
      $result.setHatImage = setHatImage;
    }
    if (setHatRotateImage != null) {
      $result.setHatRotateImage = setHatRotateImage;
    }
    if (getDgsrImageValidationResult != null) {
      $result.getDgsrImageValidationResult = getDgsrImageValidationResult;
    }
    return $result;
  }
  MyProjectCommand._() : super();
  factory MyProjectCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectCommand_Command> _MyProjectCommand_CommandByTag = {
    1 : MyProjectCommand_Command.noArgCommand,
    2 : MyProjectCommand_Command.setHatImage,
    3 : MyProjectCommand_Command.setHatRotateImage,
    4 : MyProjectCommand_Command.getDgsrImageValidationResult,
    0 : MyProjectCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..e<NoArgCommands>(1, _omitFieldNames ? '' : 'noArgCommand', $pb.PbFieldType.OE, protoName: 'noArgCommand', defaultOrMaker: NoArgCommands.Nac_NotSet, valueOf: NoArgCommands.valueOf, enumValues: NoArgCommands.values)
    ..aOM<SetHatImageCommand>(2, _omitFieldNames ? '' : 'setHatImage', protoName: 'setHatImage', subBuilder: SetHatImageCommand.create)
    ..aOM<SetHatRotateImageCommand>(3, _omitFieldNames ? '' : 'setHatRotateImage', protoName: 'setHatRotateImage', subBuilder: SetHatRotateImageCommand.create)
    ..aOM<GetDgsrImageValidationResultCommand>(4, _omitFieldNames ? '' : 'getDgsrImageValidationResult', protoName: 'getDgsrImageValidationResult', subBuilder: GetDgsrImageValidationResultCommand.create)
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
  SetHatImageCommand get setHatImage => $_getN(1);
  @$pb.TagNumber(2)
  set setHatImage(SetHatImageCommand v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSetHatImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetHatImage() => clearField(2);
  @$pb.TagNumber(2)
  SetHatImageCommand ensureSetHatImage() => $_ensure(1);

  @$pb.TagNumber(3)
  SetHatRotateImageCommand get setHatRotateImage => $_getN(2);
  @$pb.TagNumber(3)
  set setHatRotateImage(SetHatRotateImageCommand v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetHatRotateImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetHatRotateImage() => clearField(3);
  @$pb.TagNumber(3)
  SetHatRotateImageCommand ensureSetHatRotateImage() => $_ensure(2);

  @$pb.TagNumber(4)
  GetDgsrImageValidationResultCommand get getDgsrImageValidationResult => $_getN(3);
  @$pb.TagNumber(4)
  set getDgsrImageValidationResult(GetDgsrImageValidationResultCommand v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetDgsrImageValidationResult() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetDgsrImageValidationResult() => clearField(4);
  @$pb.TagNumber(4)
  GetDgsrImageValidationResultCommand ensureGetDgsrImageValidationResult() => $_ensure(3);
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

class ConfigurationResponse extends $pb.GeneratedMessage {
  factory ConfigurationResponse({
    UpdateConfiguration? updateConfiguration,
    HatConfiguration? hatConfiguration,
  }) {
    final $result = create();
    if (updateConfiguration != null) {
      $result.updateConfiguration = updateConfiguration;
    }
    if (hatConfiguration != null) {
      $result.hatConfiguration = hatConfiguration;
    }
    return $result;
  }
  ConfigurationResponse._() : super();
  factory ConfigurationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfigurationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfigurationResponse', createEmptyInstance: create)
    ..aOM<UpdateConfiguration>(1, _omitFieldNames ? '' : 'updateConfiguration', protoName: 'updateConfiguration', subBuilder: UpdateConfiguration.create)
    ..aOM<HatConfiguration>(2, _omitFieldNames ? '' : 'hatConfiguration', protoName: 'hatConfiguration', subBuilder: HatConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfigurationResponse clone() => ConfigurationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfigurationResponse copyWith(void Function(ConfigurationResponse) updates) => super.copyWith((message) => updates(message as ConfigurationResponse)) as ConfigurationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigurationResponse create() => ConfigurationResponse._();
  ConfigurationResponse createEmptyInstance() => create();
  static $pb.PbList<ConfigurationResponse> createRepeated() => $pb.PbList<ConfigurationResponse>();
  @$core.pragma('dart2js:noInline')
  static ConfigurationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfigurationResponse>(create);
  static ConfigurationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  UpdateConfiguration get updateConfiguration => $_getN(0);
  @$pb.TagNumber(1)
  set updateConfiguration(UpdateConfiguration v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUpdateConfiguration() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdateConfiguration() => clearField(1);
  @$pb.TagNumber(1)
  UpdateConfiguration ensureUpdateConfiguration() => $_ensure(0);

  @$pb.TagNumber(2)
  HatConfiguration get hatConfiguration => $_getN(1);
  @$pb.TagNumber(2)
  set hatConfiguration(HatConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHatConfiguration() => $_has(1);
  @$pb.TagNumber(2)
  void clearHatConfiguration() => clearField(2);
  @$pb.TagNumber(2)
  HatConfiguration ensureHatConfiguration() => $_ensure(1);
}

class FirmwareDetailsResponse extends $pb.GeneratedMessage {
  factory FirmwareDetailsResponse({
    $core.String? version,
    $core.String? buildTime,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (buildTime != null) {
      $result.buildTime = buildTime;
    }
    return $result;
  }
  FirmwareDetailsResponse._() : super();
  factory FirmwareDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FirmwareDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FirmwareDetailsResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'buildTime', protoName: 'buildTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FirmwareDetailsResponse clone() => FirmwareDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FirmwareDetailsResponse copyWith(void Function(FirmwareDetailsResponse) updates) => super.copyWith((message) => updates(message as FirmwareDetailsResponse)) as FirmwareDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FirmwareDetailsResponse create() => FirmwareDetailsResponse._();
  FirmwareDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<FirmwareDetailsResponse> createRepeated() => $pb.PbList<FirmwareDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static FirmwareDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FirmwareDetailsResponse>(create);
  static FirmwareDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get buildTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set buildTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuildTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildTime() => clearField(2);
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    $core.int? boardUptimeInMs,
  }) {
    final $result = create();
    if (boardUptimeInMs != null) {
      $result.boardUptimeInMs = boardUptimeInMs;
    }
    return $result;
  }
  UpdateResponse._() : super();
  factory UpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'boardUptimeInMs', $pb.PbFieldType.OU3, protoName: 'boardUptimeInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get boardUptimeInMs => $_getIZ(0);
  @$pb.TagNumber(1)
  set boardUptimeInMs($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBoardUptimeInMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoardUptimeInMs() => clearField(1);
}

class SetHatImageResponse extends $pb.GeneratedMessage {
  factory SetHatImageResponse({
    $core.String? imagePath,
    $core.bool? success,
    $core.String? message,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    if (success != null) {
      $result.success = success;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  SetHatImageResponse._() : super();
  factory SetHatImageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetHatImageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetHatImageResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetHatImageResponse clone() => SetHatImageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetHatImageResponse copyWith(void Function(SetHatImageResponse) updates) => super.copyWith((message) => updates(message as SetHatImageResponse)) as SetHatImageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetHatImageResponse create() => SetHatImageResponse._();
  SetHatImageResponse createEmptyInstance() => create();
  static $pb.PbList<SetHatImageResponse> createRepeated() => $pb.PbList<SetHatImageResponse>();
  @$core.pragma('dart2js:noInline')
  static SetHatImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetHatImageResponse>(create);
  static SetHatImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class GetDgsrImageValidationResultResponse extends $pb.GeneratedMessage {
  factory GetDgsrImageValidationResultResponse({
    $core.String? imagePath,
    $core.bool? isValid,
    $core.String? message,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    if (isValid != null) {
      $result.isValid = isValid;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  GetDgsrImageValidationResultResponse._() : super();
  factory GetDgsrImageValidationResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDgsrImageValidationResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDgsrImageValidationResultResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..aOB(2, _omitFieldNames ? '' : 'isValid', protoName: 'isValid')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDgsrImageValidationResultResponse clone() => GetDgsrImageValidationResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDgsrImageValidationResultResponse copyWith(void Function(GetDgsrImageValidationResultResponse) updates) => super.copyWith((message) => updates(message as GetDgsrImageValidationResultResponse)) as GetDgsrImageValidationResultResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDgsrImageValidationResultResponse create() => GetDgsrImageValidationResultResponse._();
  GetDgsrImageValidationResultResponse createEmptyInstance() => create();
  static $pb.PbList<GetDgsrImageValidationResultResponse> createRepeated() => $pb.PbList<GetDgsrImageValidationResultResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDgsrImageValidationResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDgsrImageValidationResultResponse>(create);
  static GetDgsrImageValidationResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isValid => $_getBF(1);
  @$pb.TagNumber(2)
  set isValid($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsValid() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsValid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

enum MyProjectResponse_Response {
  invalidCommandResponse, 
  firmwareDetailsResponse, 
  updateResponse, 
  configurationResponse, 
  setHatImageResponse, 
  getDgsrImageValidationResultResponse, 
  notSet
}

class MyProjectResponse extends $pb.GeneratedMessage {
  factory MyProjectResponse({
    InvalidCommandResponse? invalidCommandResponse,
    FirmwareDetailsResponse? firmwareDetailsResponse,
    UpdateResponse? updateResponse,
    ConfigurationResponse? configurationResponse,
    SetHatImageResponse? setHatImageResponse,
    GetDgsrImageValidationResultResponse? getDgsrImageValidationResultResponse,
  }) {
    final $result = create();
    if (invalidCommandResponse != null) {
      $result.invalidCommandResponse = invalidCommandResponse;
    }
    if (firmwareDetailsResponse != null) {
      $result.firmwareDetailsResponse = firmwareDetailsResponse;
    }
    if (updateResponse != null) {
      $result.updateResponse = updateResponse;
    }
    if (configurationResponse != null) {
      $result.configurationResponse = configurationResponse;
    }
    if (setHatImageResponse != null) {
      $result.setHatImageResponse = setHatImageResponse;
    }
    if (getDgsrImageValidationResultResponse != null) {
      $result.getDgsrImageValidationResultResponse = getDgsrImageValidationResultResponse;
    }
    return $result;
  }
  MyProjectResponse._() : super();
  factory MyProjectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MyProjectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, MyProjectResponse_Response> _MyProjectResponse_ResponseByTag = {
    1 : MyProjectResponse_Response.invalidCommandResponse,
    2 : MyProjectResponse_Response.firmwareDetailsResponse,
    3 : MyProjectResponse_Response.updateResponse,
    4 : MyProjectResponse_Response.configurationResponse,
    5 : MyProjectResponse_Response.setHatImageResponse,
    6 : MyProjectResponse_Response.getDgsrImageValidationResultResponse,
    0 : MyProjectResponse_Response.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectResponse', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<InvalidCommandResponse>(1, _omitFieldNames ? '' : 'invalidCommandResponse', protoName: 'invalidCommandResponse', subBuilder: InvalidCommandResponse.create)
    ..aOM<FirmwareDetailsResponse>(2, _omitFieldNames ? '' : 'firmwareDetailsResponse', protoName: 'firmwareDetailsResponse', subBuilder: FirmwareDetailsResponse.create)
    ..aOM<UpdateResponse>(3, _omitFieldNames ? '' : 'updateResponse', protoName: 'updateResponse', subBuilder: UpdateResponse.create)
    ..aOM<ConfigurationResponse>(4, _omitFieldNames ? '' : 'configurationResponse', protoName: 'configurationResponse', subBuilder: ConfigurationResponse.create)
    ..aOM<SetHatImageResponse>(5, _omitFieldNames ? '' : 'setHatImageResponse', protoName: 'setHatImageResponse', subBuilder: SetHatImageResponse.create)
    ..aOM<GetDgsrImageValidationResultResponse>(6, _omitFieldNames ? '' : 'getDgsrImageValidationResultResponse', protoName: 'getDgsrImageValidationResultResponse', subBuilder: GetDgsrImageValidationResultResponse.create)
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
  FirmwareDetailsResponse get firmwareDetailsResponse => $_getN(1);
  @$pb.TagNumber(2)
  set firmwareDetailsResponse(FirmwareDetailsResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirmwareDetailsResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirmwareDetailsResponse() => clearField(2);
  @$pb.TagNumber(2)
  FirmwareDetailsResponse ensureFirmwareDetailsResponse() => $_ensure(1);

  @$pb.TagNumber(3)
  UpdateResponse get updateResponse => $_getN(2);
  @$pb.TagNumber(3)
  set updateResponse(UpdateResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateResponse() => clearField(3);
  @$pb.TagNumber(3)
  UpdateResponse ensureUpdateResponse() => $_ensure(2);

  @$pb.TagNumber(4)
  ConfigurationResponse get configurationResponse => $_getN(3);
  @$pb.TagNumber(4)
  set configurationResponse(ConfigurationResponse v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasConfigurationResponse() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfigurationResponse() => clearField(4);
  @$pb.TagNumber(4)
  ConfigurationResponse ensureConfigurationResponse() => $_ensure(3);

  @$pb.TagNumber(5)
  SetHatImageResponse get setHatImageResponse => $_getN(4);
  @$pb.TagNumber(5)
  set setHatImageResponse(SetHatImageResponse v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetHatImageResponse() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetHatImageResponse() => clearField(5);
  @$pb.TagNumber(5)
  SetHatImageResponse ensureSetHatImageResponse() => $_ensure(4);

  @$pb.TagNumber(6)
  GetDgsrImageValidationResultResponse get getDgsrImageValidationResultResponse => $_getN(5);
  @$pb.TagNumber(6)
  set getDgsrImageValidationResultResponse(GetDgsrImageValidationResultResponse v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGetDgsrImageValidationResultResponse() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetDgsrImageValidationResultResponse() => clearField(6);
  @$pb.TagNumber(6)
  GetDgsrImageValidationResultResponse ensureGetDgsrImageValidationResultResponse() => $_ensure(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
