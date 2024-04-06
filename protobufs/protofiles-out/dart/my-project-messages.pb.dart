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

class SetPlaybackDirectoryCommand extends $pb.GeneratedMessage {
  factory SetPlaybackDirectoryCommand({
    $core.String? playbackDir,
  }) {
    final $result = create();
    if (playbackDir != null) {
      $result.playbackDir = playbackDir;
    }
    return $result;
  }
  SetPlaybackDirectoryCommand._() : super();
  factory SetPlaybackDirectoryCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetPlaybackDirectoryCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetPlaybackDirectoryCommand', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'playbackDir', protoName: 'playbackDir')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetPlaybackDirectoryCommand clone() => SetPlaybackDirectoryCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetPlaybackDirectoryCommand copyWith(void Function(SetPlaybackDirectoryCommand) updates) => super.copyWith((message) => updates(message as SetPlaybackDirectoryCommand)) as SetPlaybackDirectoryCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPlaybackDirectoryCommand create() => SetPlaybackDirectoryCommand._();
  SetPlaybackDirectoryCommand createEmptyInstance() => create();
  static $pb.PbList<SetPlaybackDirectoryCommand> createRepeated() => $pb.PbList<SetPlaybackDirectoryCommand>();
  @$core.pragma('dart2js:noInline')
  static SetPlaybackDirectoryCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetPlaybackDirectoryCommand>(create);
  static SetPlaybackDirectoryCommand? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get playbackDir => $_getSZ(0);
  @$pb.TagNumber(1)
  set playbackDir($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlaybackDir() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlaybackDir() => clearField(1);
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

class PlaybackSettings_ShowSingleFile extends $pb.GeneratedMessage {
  factory PlaybackSettings_ShowSingleFile({
    $core.String? imagePath,
  }) {
    final $result = create();
    if (imagePath != null) {
      $result.imagePath = imagePath;
    }
    return $result;
  }
  PlaybackSettings_ShowSingleFile._() : super();
  factory PlaybackSettings_ShowSingleFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaybackSettings_ShowSingleFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlaybackSettings_ShowSingleFile', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imagePath', protoName: 'imagePath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaybackSettings_ShowSingleFile clone() => PlaybackSettings_ShowSingleFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaybackSettings_ShowSingleFile copyWith(void Function(PlaybackSettings_ShowSingleFile) updates) => super.copyWith((message) => updates(message as PlaybackSettings_ShowSingleFile)) as PlaybackSettings_ShowSingleFile;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlaybackSettings_ShowSingleFile create() => PlaybackSettings_ShowSingleFile._();
  PlaybackSettings_ShowSingleFile createEmptyInstance() => create();
  static $pb.PbList<PlaybackSettings_ShowSingleFile> createRepeated() => $pb.PbList<PlaybackSettings_ShowSingleFile>();
  @$core.pragma('dart2js:noInline')
  static PlaybackSettings_ShowSingleFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaybackSettings_ShowSingleFile>(create);
  static PlaybackSettings_ShowSingleFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set imagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearImagePath() => clearField(1);
}

class PlaybackSettings_UseDirectoryForRandomFileSlideshow extends $pb.GeneratedMessage {
  factory PlaybackSettings_UseDirectoryForRandomFileSlideshow({
    $core.String? slideshowDirPath,
    $core.int? delayIntervalInMs,
  }) {
    final $result = create();
    if (slideshowDirPath != null) {
      $result.slideshowDirPath = slideshowDirPath;
    }
    if (delayIntervalInMs != null) {
      $result.delayIntervalInMs = delayIntervalInMs;
    }
    return $result;
  }
  PlaybackSettings_UseDirectoryForRandomFileSlideshow._() : super();
  factory PlaybackSettings_UseDirectoryForRandomFileSlideshow.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaybackSettings_UseDirectoryForRandomFileSlideshow.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlaybackSettings_UseDirectoryForRandomFileSlideshow', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'slideshowDirPath', protoName: 'slideshowDirPath')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'delayIntervalInMs', $pb.PbFieldType.OU3, protoName: 'delayIntervalInMs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaybackSettings_UseDirectoryForRandomFileSlideshow clone() => PlaybackSettings_UseDirectoryForRandomFileSlideshow()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaybackSettings_UseDirectoryForRandomFileSlideshow copyWith(void Function(PlaybackSettings_UseDirectoryForRandomFileSlideshow) updates) => super.copyWith((message) => updates(message as PlaybackSettings_UseDirectoryForRandomFileSlideshow)) as PlaybackSettings_UseDirectoryForRandomFileSlideshow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlaybackSettings_UseDirectoryForRandomFileSlideshow create() => PlaybackSettings_UseDirectoryForRandomFileSlideshow._();
  PlaybackSettings_UseDirectoryForRandomFileSlideshow createEmptyInstance() => create();
  static $pb.PbList<PlaybackSettings_UseDirectoryForRandomFileSlideshow> createRepeated() => $pb.PbList<PlaybackSettings_UseDirectoryForRandomFileSlideshow>();
  @$core.pragma('dart2js:noInline')
  static PlaybackSettings_UseDirectoryForRandomFileSlideshow getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaybackSettings_UseDirectoryForRandomFileSlideshow>(create);
  static PlaybackSettings_UseDirectoryForRandomFileSlideshow? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slideshowDirPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set slideshowDirPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlideshowDirPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlideshowDirPath() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get delayIntervalInMs => $_getIZ(1);
  @$pb.TagNumber(2)
  set delayIntervalInMs($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDelayIntervalInMs() => $_has(1);
  @$pb.TagNumber(2)
  void clearDelayIntervalInMs() => clearField(2);
}

enum SetPlaybackCommand_Playback {
  showSingleFile, 
  dirSlideshow, 
  notSet
}

class SetPlaybackCommand extends $pb.GeneratedMessage {
  factory SetPlaybackCommand({
    PlaybackSettings_ShowSingleFile? showSingleFile,
    PlaybackSettings_UseDirectoryForRandomFileSlideshow? dirSlideshow,
  }) {
    final $result = create();
    if (showSingleFile != null) {
      $result.showSingleFile = showSingleFile;
    }
    if (dirSlideshow != null) {
      $result.dirSlideshow = dirSlideshow;
    }
    return $result;
  }
  SetPlaybackCommand._() : super();
  factory SetPlaybackCommand.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetPlaybackCommand.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SetPlaybackCommand_Playback> _SetPlaybackCommand_PlaybackByTag = {
    2 : SetPlaybackCommand_Playback.showSingleFile,
    3 : SetPlaybackCommand_Playback.dirSlideshow,
    0 : SetPlaybackCommand_Playback.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetPlaybackCommand', createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<PlaybackSettings_ShowSingleFile>(2, _omitFieldNames ? '' : 'showSingleFile', protoName: 'showSingleFile', subBuilder: PlaybackSettings_ShowSingleFile.create)
    ..aOM<PlaybackSettings_UseDirectoryForRandomFileSlideshow>(3, _omitFieldNames ? '' : 'dirSlideshow', protoName: 'dirSlideshow', subBuilder: PlaybackSettings_UseDirectoryForRandomFileSlideshow.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetPlaybackCommand clone() => SetPlaybackCommand()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetPlaybackCommand copyWith(void Function(SetPlaybackCommand) updates) => super.copyWith((message) => updates(message as SetPlaybackCommand)) as SetPlaybackCommand;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetPlaybackCommand create() => SetPlaybackCommand._();
  SetPlaybackCommand createEmptyInstance() => create();
  static $pb.PbList<SetPlaybackCommand> createRepeated() => $pb.PbList<SetPlaybackCommand>();
  @$core.pragma('dart2js:noInline')
  static SetPlaybackCommand getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetPlaybackCommand>(create);
  static SetPlaybackCommand? _defaultInstance;

  SetPlaybackCommand_Playback whichPlayback() => _SetPlaybackCommand_PlaybackByTag[$_whichOneof(0)]!;
  void clearPlayback() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  PlaybackSettings_ShowSingleFile get showSingleFile => $_getN(0);
  @$pb.TagNumber(2)
  set showSingleFile(PlaybackSettings_ShowSingleFile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowSingleFile() => $_has(0);
  @$pb.TagNumber(2)
  void clearShowSingleFile() => clearField(2);
  @$pb.TagNumber(2)
  PlaybackSettings_ShowSingleFile ensureShowSingleFile() => $_ensure(0);

  @$pb.TagNumber(3)
  PlaybackSettings_UseDirectoryForRandomFileSlideshow get dirSlideshow => $_getN(1);
  @$pb.TagNumber(3)
  set dirSlideshow(PlaybackSettings_UseDirectoryForRandomFileSlideshow v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirSlideshow() => $_has(1);
  @$pb.TagNumber(3)
  void clearDirSlideshow() => clearField(3);
  @$pb.TagNumber(3)
  PlaybackSettings_UseDirectoryForRandomFileSlideshow ensureDirSlideshow() => $_ensure(1);
}

class PlaybackConfiguration extends $pb.GeneratedMessage {
  factory PlaybackConfiguration({
    PlaybackMode? mode,
    PlaybackSettings_ShowSingleFile? showSingleFileSettings,
    PlaybackSettings_UseDirectoryForRandomFileSlideshow? dirSlideshowSettings,
    $core.bool? isSlideshowPaused,
    $core.int? randomSeed,
  }) {
    final $result = create();
    if (mode != null) {
      $result.mode = mode;
    }
    if (showSingleFileSettings != null) {
      $result.showSingleFileSettings = showSingleFileSettings;
    }
    if (dirSlideshowSettings != null) {
      $result.dirSlideshowSettings = dirSlideshowSettings;
    }
    if (isSlideshowPaused != null) {
      $result.isSlideshowPaused = isSlideshowPaused;
    }
    if (randomSeed != null) {
      $result.randomSeed = randomSeed;
    }
    return $result;
  }
  PlaybackConfiguration._() : super();
  factory PlaybackConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlaybackConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlaybackConfiguration', createEmptyInstance: create)
    ..e<PlaybackMode>(1, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE, defaultOrMaker: PlaybackMode.Pbm_NotSet, valueOf: PlaybackMode.valueOf, enumValues: PlaybackMode.values)
    ..aOM<PlaybackSettings_ShowSingleFile>(2, _omitFieldNames ? '' : 'showSingleFileSettings', protoName: 'showSingleFileSettings', subBuilder: PlaybackSettings_ShowSingleFile.create)
    ..aOM<PlaybackSettings_UseDirectoryForRandomFileSlideshow>(3, _omitFieldNames ? '' : 'dirSlideshowSettings', protoName: 'dirSlideshowSettings', subBuilder: PlaybackSettings_UseDirectoryForRandomFileSlideshow.create)
    ..aOB(4, _omitFieldNames ? '' : 'isSlideshowPaused', protoName: 'isSlideshowPaused')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'randomSeed', $pb.PbFieldType.OU3, protoName: 'randomSeed')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlaybackConfiguration clone() => PlaybackConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlaybackConfiguration copyWith(void Function(PlaybackConfiguration) updates) => super.copyWith((message) => updates(message as PlaybackConfiguration)) as PlaybackConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlaybackConfiguration create() => PlaybackConfiguration._();
  PlaybackConfiguration createEmptyInstance() => create();
  static $pb.PbList<PlaybackConfiguration> createRepeated() => $pb.PbList<PlaybackConfiguration>();
  @$core.pragma('dart2js:noInline')
  static PlaybackConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlaybackConfiguration>(create);
  static PlaybackConfiguration? _defaultInstance;

  @$pb.TagNumber(1)
  PlaybackMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(PlaybackMode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => clearField(1);

  @$pb.TagNumber(2)
  PlaybackSettings_ShowSingleFile get showSingleFileSettings => $_getN(1);
  @$pb.TagNumber(2)
  set showSingleFileSettings(PlaybackSettings_ShowSingleFile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShowSingleFileSettings() => $_has(1);
  @$pb.TagNumber(2)
  void clearShowSingleFileSettings() => clearField(2);
  @$pb.TagNumber(2)
  PlaybackSettings_ShowSingleFile ensureShowSingleFileSettings() => $_ensure(1);

  @$pb.TagNumber(3)
  PlaybackSettings_UseDirectoryForRandomFileSlideshow get dirSlideshowSettings => $_getN(2);
  @$pb.TagNumber(3)
  set dirSlideshowSettings(PlaybackSettings_UseDirectoryForRandomFileSlideshow v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirSlideshowSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirSlideshowSettings() => clearField(3);
  @$pb.TagNumber(3)
  PlaybackSettings_UseDirectoryForRandomFileSlideshow ensureDirSlideshowSettings() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isSlideshowPaused => $_getBF(3);
  @$pb.TagNumber(4)
  set isSlideshowPaused($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsSlideshowPaused() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsSlideshowPaused() => clearField(4);

  @$pb.TagNumber(10)
  $core.int get randomSeed => $_getIZ(4);
  @$pb.TagNumber(10)
  set randomSeed($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(10)
  $core.bool hasRandomSeed() => $_has(4);
  @$pb.TagNumber(10)
  void clearRandomSeed() => clearField(10);
}

class HatConfiguration extends $pb.GeneratedMessage {
  factory HatConfiguration({
    $core.String? activeImagePath,
    $core.bool? rotateImage,
    PlaybackConfiguration? playbackSettings,
  }) {
    final $result = create();
    if (activeImagePath != null) {
      $result.activeImagePath = activeImagePath;
    }
    if (rotateImage != null) {
      $result.rotateImage = rotateImage;
    }
    if (playbackSettings != null) {
      $result.playbackSettings = playbackSettings;
    }
    return $result;
  }
  HatConfiguration._() : super();
  factory HatConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HatConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HatConfiguration', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'activeImagePath', protoName: 'activeImagePath')
    ..aOB(2, _omitFieldNames ? '' : 'rotateImage', protoName: 'rotateImage')
    ..aOM<PlaybackConfiguration>(3, _omitFieldNames ? '' : 'playbackSettings', protoName: 'playbackSettings', subBuilder: PlaybackConfiguration.create)
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
  $core.String get activeImagePath => $_getSZ(0);
  @$pb.TagNumber(1)
  set activeImagePath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActiveImagePath() => $_has(0);
  @$pb.TagNumber(1)
  void clearActiveImagePath() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get rotateImage => $_getBF(1);
  @$pb.TagNumber(2)
  set rotateImage($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRotateImage() => $_has(1);
  @$pb.TagNumber(2)
  void clearRotateImage() => clearField(2);

  @$pb.TagNumber(3)
  PlaybackConfiguration get playbackSettings => $_getN(2);
  @$pb.TagNumber(3)
  set playbackSettings(PlaybackConfiguration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlaybackSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlaybackSettings() => clearField(3);
  @$pb.TagNumber(3)
  PlaybackConfiguration ensurePlaybackSettings() => $_ensure(2);
}

enum MyProjectCommand_Command {
  noArgCommand, 
  setHatImage, 
  setHatRotateImage, 
  getDgsrImageValidationResult, 
  setPlayback, 
  notSet
}

class MyProjectCommand extends $pb.GeneratedMessage {
  factory MyProjectCommand({
    NoArgCommands? noArgCommand,
    SetHatImageCommand? setHatImage,
    SetHatRotateImageCommand? setHatRotateImage,
    GetDgsrImageValidationResultCommand? getDgsrImageValidationResult,
    SetPlaybackCommand? setPlayback,
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
    if (setPlayback != null) {
      $result.setPlayback = setPlayback;
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
    5 : MyProjectCommand_Command.setPlayback,
    0 : MyProjectCommand_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MyProjectCommand', createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..e<NoArgCommands>(1, _omitFieldNames ? '' : 'noArgCommand', $pb.PbFieldType.OE, protoName: 'noArgCommand', defaultOrMaker: NoArgCommands.Nac_NotSet, valueOf: NoArgCommands.valueOf, enumValues: NoArgCommands.values)
    ..aOM<SetHatImageCommand>(2, _omitFieldNames ? '' : 'setHatImage', protoName: 'setHatImage', subBuilder: SetHatImageCommand.create)
    ..aOM<SetHatRotateImageCommand>(3, _omitFieldNames ? '' : 'setHatRotateImage', protoName: 'setHatRotateImage', subBuilder: SetHatRotateImageCommand.create)
    ..aOM<GetDgsrImageValidationResultCommand>(4, _omitFieldNames ? '' : 'getDgsrImageValidationResult', protoName: 'getDgsrImageValidationResult', subBuilder: GetDgsrImageValidationResultCommand.create)
    ..aOM<SetPlaybackCommand>(5, _omitFieldNames ? '' : 'setPlayback', protoName: 'setPlayback', subBuilder: SetPlaybackCommand.create)
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

  @$pb.TagNumber(5)
  SetPlaybackCommand get setPlayback => $_getN(4);
  @$pb.TagNumber(5)
  set setPlayback(SetPlaybackCommand v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSetPlayback() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetPlayback() => clearField(5);
  @$pb.TagNumber(5)
  SetPlaybackCommand ensureSetPlayback() => $_ensure(4);
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
    HatConfiguration? hatConfiguration,
  }) {
    final $result = create();
    if (hatConfiguration != null) {
      $result.hatConfiguration = hatConfiguration;
    }
    return $result;
  }
  ConfigurationResponse._() : super();
  factory ConfigurationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfigurationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConfigurationResponse', createEmptyInstance: create)
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

  /// UpdateConfiguration updateConfiguration = 1;
  @$pb.TagNumber(2)
  HatConfiguration get hatConfiguration => $_getN(0);
  @$pb.TagNumber(2)
  set hatConfiguration(HatConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHatConfiguration() => $_has(0);
  @$pb.TagNumber(2)
  void clearHatConfiguration() => clearField(2);
  @$pb.TagNumber(2)
  HatConfiguration ensureHatConfiguration() => $_ensure(0);
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
