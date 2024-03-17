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

@$core.Deprecated('Use updateTypeDescriptor instead')
const UpdateType$json = {
  '1': 'UpdateType',
  '2': [
    {'1': 'UpdateType_NotSet', '2': 0},
    {'1': 'UpdateType_None', '2': 1},
    {'1': 'UpdateType_Interval', '2': 2},
  ],
};

/// Descriptor for `UpdateType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List updateTypeDescriptor = $convert.base64Decode(
    'CgpVcGRhdGVUeXBlEhUKEVVwZGF0ZVR5cGVfTm90U2V0EAASEwoPVXBkYXRlVHlwZV9Ob25lEA'
    'ESFwoTVXBkYXRlVHlwZV9JbnRlcnZhbBAC');

@$core.Deprecated('Use noArgCommandsDescriptor instead')
const NoArgCommands$json = {
  '1': 'NoArgCommands',
  '2': [
    {'1': 'Nac_NotSet', '2': 0},
    {'1': 'Nac_ClearScreenToWhite', '2': 1},
    {'1': 'Nac_ClearScreenToBlack', '2': 2},
    {'1': 'Nac_GetConfiguration', '2': 3},
    {'1': 'Nac_GetFirmwareDetails', '2': 4},
    {'1': 'Nac_RestartDevice', '2': 5},
  ],
};

/// Descriptor for `NoArgCommands`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noArgCommandsDescriptor = $convert.base64Decode(
    'Cg1Ob0FyZ0NvbW1hbmRzEg4KCk5hY19Ob3RTZXQQABIaChZOYWNfQ2xlYXJTY3JlZW5Ub1doaX'
    'RlEAESGgoWTmFjX0NsZWFyU2NyZWVuVG9CbGFjaxACEhgKFE5hY19HZXRDb25maWd1cmF0aW9u'
    'EAMSGgoWTmFjX0dldEZpcm13YXJlRGV0YWlscxAEEhUKEU5hY19SZXN0YXJ0RGV2aWNlEAU=');

@$core.Deprecated('Use updateConfigurationDescriptor instead')
const UpdateConfiguration$json = {
  '1': 'UpdateConfiguration',
  '2': [
    {'1': 'updateType', '3': 1, '4': 1, '5': 14, '6': '.UpdateType', '10': 'updateType'},
    {'1': 'updateIntervalInMs', '3': 2, '4': 1, '5': 13, '10': 'updateIntervalInMs'},
  ],
};

/// Descriptor for `UpdateConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateConfigurationDescriptor = $convert.base64Decode(
    'ChNVcGRhdGVDb25maWd1cmF0aW9uEisKCnVwZGF0ZVR5cGUYASABKA4yCy5VcGRhdGVUeXBlUg'
    'p1cGRhdGVUeXBlEi4KEnVwZGF0ZUludGVydmFsSW5NcxgCIAEoDVISdXBkYXRlSW50ZXJ2YWxJ'
    'bk1z');

@$core.Deprecated('Use setUpdateConfigurationDescriptor instead')
const SetUpdateConfiguration$json = {
  '1': 'SetUpdateConfiguration',
  '2': [
    {'1': 'updateConfiguration', '3': 1, '4': 1, '5': 11, '6': '.UpdateConfiguration', '10': 'updateConfiguration'},
    {'1': 'saveConfiguration', '3': 2, '4': 1, '5': 8, '10': 'saveConfiguration'},
  ],
};

/// Descriptor for `SetUpdateConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUpdateConfigurationDescriptor = $convert.base64Decode(
    'ChZTZXRVcGRhdGVDb25maWd1cmF0aW9uEkYKE3VwZGF0ZUNvbmZpZ3VyYXRpb24YASABKAsyFC'
    '5VcGRhdGVDb25maWd1cmF0aW9uUhN1cGRhdGVDb25maWd1cmF0aW9uEiwKEXNhdmVDb25maWd1'
    'cmF0aW9uGAIgASgIUhFzYXZlQ29uZmlndXJhdGlvbg==');

@$core.Deprecated('Use hatConfigurationDescriptor instead')
const HatConfiguration$json = {
  '1': 'HatConfiguration',
  '2': [
    {'1': 'imagePath', '3': 1, '4': 1, '5': 9, '10': 'imagePath'},
    {'1': 'rotateImage', '3': 2, '4': 1, '5': 8, '10': 'rotateImage'},
  ],
};

/// Descriptor for `HatConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hatConfigurationDescriptor = $convert.base64Decode(
    'ChBIYXRDb25maWd1cmF0aW9uEhwKCWltYWdlUGF0aBgBIAEoCVIJaW1hZ2VQYXRoEiAKC3JvdG'
    'F0ZUltYWdlGAIgASgIUgtyb3RhdGVJbWFnZQ==');

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

@$core.Deprecated('Use myProjectCommandDescriptor instead')
const MyProjectCommand$json = {
  '1': 'MyProjectCommand',
  '2': [
    {'1': 'noArgCommand', '3': 1, '4': 1, '5': 14, '6': '.NoArgCommands', '9': 0, '10': 'noArgCommand'},
    {'1': 'setHatImage', '3': 2, '4': 1, '5': 11, '6': '.SetHatImageCommand', '9': 0, '10': 'setHatImage'},
    {'1': 'setHatRotateImage', '3': 3, '4': 1, '5': 11, '6': '.SetHatRotateImageCommand', '9': 0, '10': 'setHatRotateImage'},
    {'1': 'getDgsrImageValidationResult', '3': 4, '4': 1, '5': 11, '6': '.GetDgsrImageValidationResultCommand', '9': 0, '10': 'getDgsrImageValidationResult'},
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
    'FuZEgAUhxnZXREZ3NySW1hZ2VWYWxpZGF0aW9uUmVzdWx0QgkKB2NvbW1hbmQ=');

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
    {'1': 'updateConfiguration', '3': 1, '4': 1, '5': 11, '6': '.UpdateConfiguration', '10': 'updateConfiguration'},
    {'1': 'hatConfiguration', '3': 2, '4': 1, '5': 11, '6': '.HatConfiguration', '10': 'hatConfiguration'},
  ],
};

/// Descriptor for `ConfigurationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configurationResponseDescriptor = $convert.base64Decode(
    'ChVDb25maWd1cmF0aW9uUmVzcG9uc2USRgoTdXBkYXRlQ29uZmlndXJhdGlvbhgBIAEoCzIULl'
    'VwZGF0ZUNvbmZpZ3VyYXRpb25SE3VwZGF0ZUNvbmZpZ3VyYXRpb24SPQoQaGF0Q29uZmlndXJh'
    'dGlvbhgCIAEoCzIRLkhhdENvbmZpZ3VyYXRpb25SEGhhdENvbmZpZ3VyYXRpb24=');

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

