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

class NoArgCommands extends $pb.ProtobufEnum {
  static const NoArgCommands Nac_NotSet = NoArgCommands._(0, _omitEnumNames ? '' : 'Nac_NotSet');
  static const NoArgCommands Nac_ClearScreenToWhite = NoArgCommands._(1, _omitEnumNames ? '' : 'Nac_ClearScreenToWhite');
  static const NoArgCommands Nac_ClearScreenToBlack = NoArgCommands._(2, _omitEnumNames ? '' : 'Nac_ClearScreenToBlack');
  static const NoArgCommands Nac_ShowDefaultImage = NoArgCommands._(3, _omitEnumNames ? '' : 'Nac_ShowDefaultImage');
  static const NoArgCommands Nac_GetConfiguration = NoArgCommands._(4, _omitEnumNames ? '' : 'Nac_GetConfiguration');
  static const NoArgCommands Nac_AdvancePlayback = NoArgCommands._(5, _omitEnumNames ? '' : 'Nac_AdvancePlayback');
  static const NoArgCommands Nac_UserPausePlayback = NoArgCommands._(6, _omitEnumNames ? '' : 'Nac_UserPausePlayback');
  static const NoArgCommands Nac_UserUnpausePlayback = NoArgCommands._(7, _omitEnumNames ? '' : 'Nac_UserUnpausePlayback');

  static const $core.List<NoArgCommands> values = <NoArgCommands> [
    Nac_NotSet,
    Nac_ClearScreenToWhite,
    Nac_ClearScreenToBlack,
    Nac_ShowDefaultImage,
    Nac_GetConfiguration,
    Nac_AdvancePlayback,
    Nac_UserPausePlayback,
    Nac_UserUnpausePlayback,
  ];

  static final $core.Map<$core.int, NoArgCommands> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NoArgCommands? valueOf($core.int value) => _byValue[value];

  const NoArgCommands._($core.int v, $core.String n) : super(v, n);
}

class PlaybackMode extends $pb.ProtobufEnum {
  static const PlaybackMode Pbm_NotSet = PlaybackMode._(0, _omitEnumNames ? '' : 'Pbm_NotSet');
  static const PlaybackMode Pbm_ShowDefaultImage = PlaybackMode._(1, _omitEnumNames ? '' : 'Pbm_ShowDefaultImage');
  static const PlaybackMode Pbm_ShowSingleFile = PlaybackMode._(2, _omitEnumNames ? '' : 'Pbm_ShowSingleFile');
  static const PlaybackMode Pbm_UseDirectoryForRandomFileSlideshow = PlaybackMode._(3, _omitEnumNames ? '' : 'Pbm_UseDirectoryForRandomFileSlideshow');
  static const PlaybackMode Pbm_ShowWhiteScreen = PlaybackMode._(4, _omitEnumNames ? '' : 'Pbm_ShowWhiteScreen');
  static const PlaybackMode Pbm_ShowBlackScreen = PlaybackMode._(5, _omitEnumNames ? '' : 'Pbm_ShowBlackScreen');

  static const $core.List<PlaybackMode> values = <PlaybackMode> [
    Pbm_NotSet,
    Pbm_ShowDefaultImage,
    Pbm_ShowSingleFile,
    Pbm_UseDirectoryForRandomFileSlideshow,
    Pbm_ShowWhiteScreen,
    Pbm_ShowBlackScreen,
  ];

  static final $core.Map<$core.int, PlaybackMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PlaybackMode? valueOf($core.int value) => _byValue[value];

  const PlaybackMode._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
