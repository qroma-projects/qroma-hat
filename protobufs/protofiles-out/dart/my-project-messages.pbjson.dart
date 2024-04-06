//
//  Generated code. Do not modify.
//  source: my-project-messages.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use noArgCommandsDescriptor instead')
const NoArgCommands$json = {
  '1': 'NoArgCommands',
  '2': [
    {'1': 'Nac_NotSet', '2': 0},
    {'1': 'Nac_ClearScreenToWhite', '2': 1},
    {'1': 'Nac_ClearScreenToBlack', '2': 2},
    {'1': 'Nac_ShowDefaultImage', '2': 3},
    {'1': 'Nac_GetConfiguration', '2': 4},
    {'1': 'Nac_AdvancePlayback', '2': 5},
    {'1': 'Nac_UserPausePlayback', '2': 6},
    {'1': 'Nac_UserUnpausePlayback', '2': 7},
  ],
};

/// Descriptor for `NoArgCommands`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noArgCommandsDescriptor = $convert.base64Decode(
    'Cg1Ob0FyZ0NvbW1hbmRzEg4KCk5hY19Ob3RTZXQQABIaChZOYWNfQ2xlYXJTY3JlZW5Ub1doaX'
    'RlEAESGgoWTmFjX0NsZWFyU2NyZWVuVG9CbGFjaxACEhgKFE5hY19TaG93RGVmYXVsdEltYWdl'
    'EAMSGAoUTmFjX0dldENvbmZpZ3VyYXRpb24QBBIXChNOYWNfQWR2YW5jZVBsYXliYWNrEAUSGQ'
    'oVTmFjX1VzZXJQYXVzZVBsYXliYWNrEAYSGwoXTmFjX1VzZXJVbnBhdXNlUGxheWJhY2sQBw==');

@$core.Deprecated('Use playbackModeDescriptor instead')
const PlaybackMode$json = {
  '1': 'PlaybackMode',
  '2': [
    {'1': 'Pbm_NotSet', '2': 0},
    {'1': 'Pbm_ShowDefaultImage', '2': 1},
    {'1': 'Pbm_ShowSingleFile', '2': 2},
    {'1': 'Pbm_UseDirectoryForRandomFileSlideshow', '2': 3},
    {'1': 'Pbm_ShowWhiteScreen', '2': 4},
    {'1': 'Pbm_ShowBlackScreen', '2': 5},
  ],
};

/// Descriptor for `PlaybackMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List playbackModeDescriptor = $convert.base64Decode(
    'CgxQbGF5YmFja01vZGUSDgoKUGJtX05vdFNldBAAEhgKFFBibV9TaG93RGVmYXVsdEltYWdlEA'
    'ESFgoSUGJtX1Nob3dTaW5nbGVGaWxlEAISKgomUGJtX1VzZURpcmVjdG9yeUZvclJhbmRvbUZp'
    'bGVTbGlkZXNob3cQAxIXChNQYm1fU2hvd1doaXRlU2NyZWVuEAQSFwoTUGJtX1Nob3dCbGFja1'
    'NjcmVlbhAF');

@$core.Deprecated('Use setHatRotateImageCommandDescriptor instead')
const SetHatRotateImageCommand$json = {
  '1': 'SetHatRotateImageCommand',
  '2': [
    {'1': 'rotateImage', '3': 1, '4': 1, '5': 8, '10': 'rotateImage'},
  ],
};

/// Descriptor for `SetHatRotateImageCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setHatRotateImageCommandDescriptor = $convert.base64Decode(
    'ChhTZXRIYXRSb3RhdGVJbWFnZUNvbW1hbmQSIAoLcm90YXRlSW1hZ2UYASABKAhSC3JvdGF0ZU'
    'ltYWdl');

@$core.Deprecated('Use setHatImageCommandDescriptor instead')
const SetHatImageCommand$json = {
  '1': 'SetHatImageCommand',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
  ],
};

/// Descriptor for `SetHatImageCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setHatImageCommandDescriptor = $convert.base64Decode(
    'ChJTZXRIYXRJbWFnZUNvbW1hbmQSHAoJaW1hZ2VQYXRoGAEgASgJUglpbWFnZVBhdGg=');

@$core.Deprecated('Use setPlaybackDirectoryCommandDescriptor instead')
const SetPlaybackDirectoryCommand$json = {
  '1': 'SetPlaybackDirectoryCommand',
  '2': [
    {'1': 'playbackDir', '3': 1, '4': 1, '5': 9, '10': 'playbackDir'},
  ],
};

/// Descriptor for `SetPlaybackDirectoryCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPlaybackDirectoryCommandDescriptor = $convert.base64Decode(
    'ChtTZXRQbGF5YmFja0RpcmVjdG9yeUNvbW1hbmQSIAoLcGxheWJhY2tEaXIYASABKAlSC3BsYX'
    'liYWNrRGly');

@$core.Deprecated('Use getDgsrImageValidationResultCommandDescriptor instead')
const GetDgsrImageValidationResultCommand$json = {
  '1': 'GetDgsrImageValidationResultCommand',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
  ],
};

/// Descriptor for `GetDgsrImageValidationResultCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDgsrImageValidationResultCommandDescriptor = $convert.base64Decode(
    'CiNHZXREZ3NySW1hZ2VWYWxpZGF0aW9uUmVzdWx0Q29tbWFuZBIcCglpbWFnZVBhdGgYASABKA'
    'lSCWltYWdlUGF0aA==');

@$core.Deprecated('Use playbackSettings_ShowSingleFileDescriptor instead')
const PlaybackSettings_ShowSingleFile$json = {
  '1': 'PlaybackSettings_ShowSingleFile',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
  ],
};

/// Descriptor for `PlaybackSettings_ShowSingleFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playbackSettings_ShowSingleFileDescriptor = $convert.base64Decode(
    'Ch9QbGF5YmFja1NldHRpbmdzX1Nob3dTaW5nbGVGaWxlEhwKCWltYWdlUGF0aBgBIAEoCVIJaW'
    '1hZ2VQYXRo');

@$core.Deprecated('Use playbackSettings_UseDirectoryForRandomFileSlideshowDescriptor instead')
const PlaybackSettings_UseDirectoryForRandomFileSlideshow$json = {
  '1': 'PlaybackSettings_UseDirectoryForRandomFileSlideshow',
  '2': [
    {'1': 'slideshowDirPath', '3': 1, '4': 1, '5': 9, '10': 'slideshowDirPath'},
    {'1': 'delayIntervalInMs', '3': 2, '4': 1, '5': 13, '10': 'delayIntervalInMs'},
  ],
};

/// Descriptor for `PlaybackSettings_UseDirectoryForRandomFileSlideshow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playbackSettings_UseDirectoryForRandomFileSlideshowDescriptor = $convert.base64Decode(
    'CjNQbGF5YmFja1NldHRpbmdzX1VzZURpcmVjdG9yeUZvclJhbmRvbUZpbGVTbGlkZXNob3cSKg'
    'oQc2xpZGVzaG93RGlyUGF0aBgBIAEoCVIQc2xpZGVzaG93RGlyUGF0aBIsChFkZWxheUludGVy'
    'dmFsSW5NcxgCIAEoDVIRZGVsYXlJbnRlcnZhbEluTXM=');

@$core.Deprecated('Use setPlaybackCommandDescriptor instead')
const SetPlaybackCommand$json = {
  '1': 'SetPlaybackCommand',
  '2': [
    {'1': 'showSingleFile', '3': 2, '4': 1, '5': 11, '6': '.PlaybackSettings_ShowSingleFile', '9': 0, '10': 'showSingleFile'},
    {'1': 'dirSlideshow', '3': 3, '4': 1, '5': 11, '6': '.PlaybackSettings_UseDirectoryForRandomFileSlideshow', '9': 0, '10': 'dirSlideshow'},
  ],
  '8': [
    {'1': 'playback'},
  ],
};

/// Descriptor for `SetPlaybackCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setPlaybackCommandDescriptor = $convert.base64Decode(
    'ChJTZXRQbGF5YmFja0NvbW1hbmQSSgoOc2hvd1NpbmdsZUZpbGUYAiABKAsyIC5QbGF5YmFja1'
    'NldHRpbmdzX1Nob3dTaW5nbGVGaWxlSABSDnNob3dTaW5nbGVGaWxlEloKDGRpclNsaWRlc2hv'
    'dxgDIAEoCzI0LlBsYXliYWNrU2V0dGluZ3NfVXNlRGlyZWN0b3J5Rm9yUmFuZG9tRmlsZVNsaW'
    'Rlc2hvd0gAUgxkaXJTbGlkZXNob3dCCgoIcGxheWJhY2s=');

@$core.Deprecated('Use playbackConfigurationDescriptor instead')
const PlaybackConfiguration$json = {
  '1': 'PlaybackConfiguration',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 14, '6': '.PlaybackMode', '10': 'mode'},
    {'1': 'showSingleFileSettings', '3': 2, '4': 1, '5': 11, '6': '.PlaybackSettings_ShowSingleFile', '10': 'showSingleFileSettings'},
    {'1': 'dirSlideshowSettings', '3': 3, '4': 1, '5': 11, '6': '.PlaybackSettings_UseDirectoryForRandomFileSlideshow', '10': 'dirSlideshowSettings'},
    {'1': 'isSlideshowPaused', '3': 4, '4': 1, '5': 8, '10': 'isSlideshowPaused'},
    {'1': 'randomSeed', '3': 10, '4': 1, '5': 13, '10': 'randomSeed'},
  ],
};

/// Descriptor for `PlaybackConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List playbackConfigurationDescriptor = $convert.base64Decode(
    'ChVQbGF5YmFja0NvbmZpZ3VyYXRpb24SIQoEbW9kZRgBIAEoDjINLlBsYXliYWNrTW9kZVIEbW'
    '9kZRJYChZzaG93U2luZ2xlRmlsZVNldHRpbmdzGAIgASgLMiAuUGxheWJhY2tTZXR0aW5nc19T'
    'aG93U2luZ2xlRmlsZVIWc2hvd1NpbmdsZUZpbGVTZXR0aW5ncxJoChRkaXJTbGlkZXNob3dTZX'
    'R0aW5ncxgDIAEoCzI0LlBsYXliYWNrU2V0dGluZ3NfVXNlRGlyZWN0b3J5Rm9yUmFuZG9tRmls'
    'ZVNsaWRlc2hvd1IUZGlyU2xpZGVzaG93U2V0dGluZ3MSLAoRaXNTbGlkZXNob3dQYXVzZWQYBC'
    'ABKAhSEWlzU2xpZGVzaG93UGF1c2VkEh4KCnJhbmRvbVNlZWQYCiABKA1SCnJhbmRvbVNlZWQ=');

@$core.Deprecated('Use hatConfigurationDescriptor instead')
const HatConfiguration$json = {
  '1': 'HatConfiguration',
  '2': [
    {'1': 'activeImagePath', '3': 1, '4': 1, '5': 9, '10': 'activeImagePath'},
    {'1': 'rotateImage', '3': 2, '4': 1, '5': 8, '10': 'rotateImage'},
    {'1': 'playbackSettings', '3': 3, '4': 1, '5': 11, '6': '.PlaybackConfiguration', '10': 'playbackSettings'},
  ],
};

/// Descriptor for `HatConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hatConfigurationDescriptor = $convert.base64Decode(
    'ChBIYXRDb25maWd1cmF0aW9uEigKD2FjdGl2ZUltYWdlUGF0aBgBIAEoCVIPYWN0aXZlSW1hZ2'
    'VQYXRoEiAKC3JvdGF0ZUltYWdlGAIgASgIUgtyb3RhdGVJbWFnZRJCChBwbGF5YmFja1NldHRp'
    'bmdzGAMgASgLMhYuUGxheWJhY2tDb25maWd1cmF0aW9uUhBwbGF5YmFja1NldHRpbmdz');

@$core.Deprecated('Use myProjectCommandDescriptor instead')
const MyProjectCommand$json = {
  '1': 'MyProjectCommand',
  '2': [
    {'1': 'noArgCommand', '3': 1, '4': 1, '5': 14, '6': '.NoArgCommands', '9': 0, '10': 'noArgCommand'},
    {'1': 'setHatImage', '3': 2, '4': 1, '5': 11, '6': '.SetHatImageCommand', '9': 0, '10': 'setHatImage'},
    {'1': 'setHatRotateImage', '3': 3, '4': 1, '5': 11, '6': '.SetHatRotateImageCommand', '9': 0, '10': 'setHatRotateImage'},
    {'1': 'getDgsrImageValidationResult', '3': 4, '4': 1, '5': 11, '6': '.GetDgsrImageValidationResultCommand', '9': 0, '10': 'getDgsrImageValidationResult'},
    {'1': 'setPlayback', '3': 5, '4': 1, '5': 11, '6': '.SetPlaybackCommand', '9': 0, '10': 'setPlayback'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `MyProjectCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectCommandDescriptor = $convert.base64Decode(
    'ChBNeVByb2plY3RDb21tYW5kEjQKDG5vQXJnQ29tbWFuZBgBIAEoDjIOLk5vQXJnQ29tbWFuZH'
    'NIAFIMbm9BcmdDb21tYW5kEjcKC3NldEhhdEltYWdlGAIgASgLMhMuU2V0SGF0SW1hZ2VDb21t'
    'YW5kSABSC3NldEhhdEltYWdlEkkKEXNldEhhdFJvdGF0ZUltYWdlGAMgASgLMhkuU2V0SGF0Um'
    '90YXRlSW1hZ2VDb21tYW5kSABSEXNldEhhdFJvdGF0ZUltYWdlEmoKHGdldERnc3JJbWFnZVZh'
    'bGlkYXRpb25SZXN1bHQYBCABKAsyJC5HZXREZ3NySW1hZ2VWYWxpZGF0aW9uUmVzdWx0Q29tbW'
    'FuZEgAUhxnZXREZ3NySW1hZ2VWYWxpZGF0aW9uUmVzdWx0EjcKC3NldFBsYXliYWNrGAUgASgL'
    'MhMuU2V0UGxheWJhY2tDb21tYW5kSABSC3NldFBsYXliYWNrQgkKB2NvbW1hbmQ=');

@$core.Deprecated('Use invalidCommandResponseDescriptor instead')
const InvalidCommandResponse$json = {
  '1': 'InvalidCommandResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `InvalidCommandResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invalidCommandResponseDescriptor = $convert.base64Decode(
    'ChZJbnZhbGlkQ29tbWFuZFJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use configurationResponseDescriptor instead')
const ConfigurationResponse$json = {
  '1': 'ConfigurationResponse',
  '2': [
    {'1': 'hatConfiguration', '3': 2, '4': 1, '5': 11, '6': '.HatConfiguration', '10': 'hatConfiguration'},
  ],
};

/// Descriptor for `ConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationResponseDescriptor = $convert.base64Decode(
    'ChVDb25maWd1cmF0aW9uUmVzcG9uc2USPQoQaGF0Q29uZmlndXJhdGlvbhgCIAEoCzIRLkhhdE'
    'NvbmZpZ3VyYXRpb25SEGhhdENvbmZpZ3VyYXRpb24=');

@$core.Deprecated('Use firmwareDetailsResponseDescriptor instead')
const FirmwareDetailsResponse$json = {
  '1': 'FirmwareDetailsResponse',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'buildTime', '3': 2, '4': 1, '5': 9, '10': 'buildTime'},
  ],
};

/// Descriptor for `FirmwareDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List firmwareDetailsResponseDescriptor = $convert.base64Decode(
    'ChdGaXJtd2FyZURldGFpbHNSZXNwb25zZRIYCgd2ZXJzaW9uGAEgASgJUgd2ZXJzaW9uEhwKCW'
    'J1aWxkVGltZRgCIAEoCVIJYnVpbGRUaW1l');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'boardUptimeInMs', '3': 1, '4': 1, '5': 13, '10': 'boardUptimeInMs'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRIoCg9ib2FyZFVwdGltZUluTXMYASABKA1SD2JvYXJkVXB0aW1lSW'
    '5Ncw==');

@$core.Deprecated('Use setHatImageResponseDescriptor instead')
const SetHatImageResponse$json = {
  '1': 'SetHatImageResponse',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SetHatImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setHatImageResponseDescriptor = $convert.base64Decode(
    'ChNTZXRIYXRJbWFnZVJlc3BvbnNlEhwKCWltYWdlUGF0aBgBIAEoCVIJaW1hZ2VQYXRoEhgKB3'
    'N1Y2Nlc3MYAiABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use getDgsrImageValidationResultResponseDescriptor instead')
const GetDgsrImageValidationResultResponse$json = {
  '1': 'GetDgsrImageValidationResultResponse',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
    {'1': 'isValid', '3': 2, '4': 1, '5': 8, '10': 'isValid'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `GetDgsrImageValidationResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDgsrImageValidationResultResponseDescriptor = $convert.base64Decode(
    'CiRHZXREZ3NySW1hZ2VWYWxpZGF0aW9uUmVzdWx0UmVzcG9uc2USHAoJaW1hZ2VQYXRoGAEgAS'
    'gJUglpbWFnZVBhdGgSGAoHaXNWYWxpZBgCIAEoCFIHaXNWYWxpZBIYCgdtZXNzYWdlGAMgASgJ'
    'UgdtZXNzYWdl');

@$core.Deprecated('Use myProjectResponseDescriptor instead')
const MyProjectResponse$json = {
  '1': 'MyProjectResponse',
  '2': [
    {'1': 'invalidCommandResponse', '3': 1, '4': 1, '5': 11, '6': '.InvalidCommandResponse', '9': 0, '10': 'invalidCommandResponse'},
    {'1': 'firmwareDetailsResponse', '3': 2, '4': 1, '5': 11, '6': '.FirmwareDetailsResponse', '9': 0, '10': 'firmwareDetailsResponse'},
    {'1': 'updateResponse', '3': 3, '4': 1, '5': 11, '6': '.UpdateResponse', '9': 0, '10': 'updateResponse'},
    {'1': 'configurationResponse', '3': 4, '4': 1, '5': 11, '6': '.ConfigurationResponse', '9': 0, '10': 'configurationResponse'},
    {'1': 'setHatImageResponse', '3': 5, '4': 1, '5': 11, '6': '.SetHatImageResponse', '9': 0, '10': 'setHatImageResponse'},
    {'1': 'getDgsrImageValidationResultResponse', '3': 6, '4': 1, '5': 11, '6': '.GetDgsrImageValidationResultResponse', '9': 0, '10': 'getDgsrImageValidationResultResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `MyProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectResponseDescriptor = $convert.base64Decode(
    'ChFNeVByb2plY3RSZXNwb25zZRJRChZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlGAEgASgLMhcuSW'
    '52YWxpZENvbW1hbmRSZXNwb25zZUgAUhZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlElQKF2Zpcm13'
    'YXJlRGV0YWlsc1Jlc3BvbnNlGAIgASgLMhguRmlybXdhcmVEZXRhaWxzUmVzcG9uc2VIAFIXZm'
    'lybXdhcmVEZXRhaWxzUmVzcG9uc2USOQoOdXBkYXRlUmVzcG9uc2UYAyABKAsyDy5VcGRhdGVS'
    'ZXNwb25zZUgAUg51cGRhdGVSZXNwb25zZRJOChVjb25maWd1cmF0aW9uUmVzcG9uc2UYBCABKA'
    'syFi5Db25maWd1cmF0aW9uUmVzcG9uc2VIAFIVY29uZmlndXJhdGlvblJlc3BvbnNlEkgKE3Nl'
    'dEhhdEltYWdlUmVzcG9uc2UYBSABKAsyFC5TZXRIYXRJbWFnZVJlc3BvbnNlSABSE3NldEhhdE'
    'ltYWdlUmVzcG9uc2USewokZ2V0RGdzckltYWdlVmFsaWRhdGlvblJlc3VsdFJlc3BvbnNlGAYg'
    'ASgLMiUuR2V0RGdzckltYWdlVmFsaWRhdGlvblJlc3VsdFJlc3BvbnNlSABSJGdldERnc3JJbW'
    'FnZVZhbGlkYXRpb25SZXN1bHRSZXNwb25zZUIKCghyZXNwb25zZQ==');

