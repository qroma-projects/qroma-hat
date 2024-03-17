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

@$core.Deprecated('Use mathOperationDescriptor instead')
const MathOperation$json = {
  '1': 'MathOperation',
  '2': [
    {'1': 'MathOp_NotSet', '2': 0},
    {'1': 'MathOp_Add', '2': 1},
    {'1': 'MathOp_Subtract', '2': 2},
    {'1': 'MathOp_Add_And_Subtract', '2': 3},
  ],
};

/// Descriptor for `MathOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List mathOperationDescriptor = $convert.base64Decode(
    'Cg1NYXRoT3BlcmF0aW9uEhEKDU1hdGhPcF9Ob3RTZXQQABIOCgpNYXRoT3BfQWRkEAESEwoPTW'
    'F0aE9wX1N1YnRyYWN0EAISGwoXTWF0aE9wX0FkZF9BbmRfU3VidHJhY3QQAw==');

@$core.Deprecated('Use noArgCommandsDescriptor instead')
const NoArgCommands$json = {
  '1': 'NoArgCommands',
  '2': [
    {'1': 'Nac_NotSet', '2': 0},
    {'1': 'Nac_GetProjectDetailsRequest', '2': 1},
    {'1': 'Nac_GetBoardDetailsRequest', '2': 2},
    {'1': 'Nac_SaveCurrentConfiguration', '2': 3},
    {'1': 'Nac_LoadSavedConfiguration', '2': 4},
  ],
};

/// Descriptor for `NoArgCommands`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List noArgCommandsDescriptor = $convert.base64Decode(
    'Cg1Ob0FyZ0NvbW1hbmRzEg4KCk5hY19Ob3RTZXQQABIgChxOYWNfR2V0UHJvamVjdERldGFpbH'
    'NSZXF1ZXN0EAESHgoaTmFjX0dldEJvYXJkRGV0YWlsc1JlcXVlc3QQAhIgChxOYWNfU2F2ZUN1'
    'cnJlbnRDb25maWd1cmF0aW9uEAMSHgoaTmFjX0xvYWRTYXZlZENvbmZpZ3VyYXRpb24QBA==');

@$core.Deprecated('Use helloQromaRequestDescriptor instead')
const HelloQromaRequest$json = {
  '1': 'HelloQromaRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `HelloQromaRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloQromaRequestDescriptor = $convert.base64Decode(
    'ChFIZWxsb1Fyb21hUmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use helloQromaResponseDescriptor instead')
const HelloQromaResponse$json = {
  '1': 'HelloQromaResponse',
  '2': [
    {'1': 'response', '3': 1, '4': 1, '5': 9, '10': 'response'},
    {'1': 'callCount', '3': 2, '4': 1, '5': 13, '10': 'callCount'},
    {'1': 'nameLength', '3': 3, '4': 1, '5': 13, '10': 'nameLength'},
  ],
};

/// Descriptor for `HelloQromaResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List helloQromaResponseDescriptor = $convert.base64Decode(
    'ChJIZWxsb1Fyb21hUmVzcG9uc2USGgoIcmVzcG9uc2UYASABKAlSCHJlc3BvbnNlEhwKCWNhbG'
    'xDb3VudBgCIAEoDVIJY2FsbENvdW50Eh4KCm5hbWVMZW5ndGgYAyABKA1SCm5hbWVMZW5ndGg=');

@$core.Deprecated('Use mathRequestDescriptor instead')
const MathRequest$json = {
  '1': 'MathRequest',
  '2': [
    {'1': 'a', '3': 1, '4': 1, '5': 13, '10': 'a'},
    {'1': 'b', '3': 2, '4': 1, '5': 13, '10': 'b'},
    {'1': 'op', '3': 3, '4': 1, '5': 14, '6': '.MathOperation', '10': 'op'},
  ],
};

/// Descriptor for `MathRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathRequestDescriptor = $convert.base64Decode(
    'CgtNYXRoUmVxdWVzdBIMCgFhGAEgASgNUgFhEgwKAWIYAiABKA1SAWISHgoCb3AYAyABKA4yDi'
    '5NYXRoT3BlcmF0aW9uUgJvcA==');

@$core.Deprecated('Use mathResult_AddDescriptor instead')
const MathResult_Add$json = {
  '1': 'MathResult_Add',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 13, '10': 'result'},
  ],
};

/// Descriptor for `MathResult_Add`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_AddDescriptor = $convert.base64Decode(
    'Cg5NYXRoUmVzdWx0X0FkZBIWCgZyZXN1bHQYASABKA1SBnJlc3VsdA==');

@$core.Deprecated('Use mathResult_SubtractDescriptor instead')
const MathResult_Subtract$json = {
  '1': 'MathResult_Subtract',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 13, '10': 'result'},
  ],
};

/// Descriptor for `MathResult_Subtract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_SubtractDescriptor = $convert.base64Decode(
    'ChNNYXRoUmVzdWx0X1N1YnRyYWN0EhYKBnJlc3VsdBgBIAEoDVIGcmVzdWx0');

@$core.Deprecated('Use mathResult_AddAndSubtractDescriptor instead')
const MathResult_AddAndSubtract$json = {
  '1': 'MathResult_AddAndSubtract',
  '2': [
    {'1': 'addResult', '3': 1, '4': 1, '5': 13, '10': 'addResult'},
    {'1': 'subtractResult', '3': 2, '4': 1, '5': 13, '10': 'subtractResult'},
  ],
};

/// Descriptor for `MathResult_AddAndSubtract`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResult_AddAndSubtractDescriptor = $convert.base64Decode(
    'ChlNYXRoUmVzdWx0X0FkZEFuZFN1YnRyYWN0EhwKCWFkZFJlc3VsdBgBIAEoDVIJYWRkUmVzdW'
    'x0EiYKDnN1YnRyYWN0UmVzdWx0GAIgASgNUg5zdWJ0cmFjdFJlc3VsdA==');

@$core.Deprecated('Use mathResponseDescriptor instead')
const MathResponse$json = {
  '1': 'MathResponse',
  '2': [
    {'1': 'addResult', '3': 1, '4': 1, '5': 11, '6': '.MathResult_Add', '9': 0, '10': 'addResult'},
    {'1': 'subtractResult', '3': 2, '4': 1, '5': 11, '6': '.MathResult_Subtract', '9': 0, '10': 'subtractResult'},
    {'1': 'addAndSubtractResult', '3': 3, '4': 1, '5': 11, '6': '.MathResult_AddAndSubtract', '9': 0, '10': 'addAndSubtractResult'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `MathResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mathResponseDescriptor = $convert.base64Decode(
    'CgxNYXRoUmVzcG9uc2USLwoJYWRkUmVzdWx0GAEgASgLMg8uTWF0aFJlc3VsdF9BZGRIAFIJYW'
    'RkUmVzdWx0Ej4KDnN1YnRyYWN0UmVzdWx0GAIgASgLMhQuTWF0aFJlc3VsdF9TdWJ0cmFjdEgA'
    'Ug5zdWJ0cmFjdFJlc3VsdBJQChRhZGRBbmRTdWJ0cmFjdFJlc3VsdBgDIAEoCzIaLk1hdGhSZX'
    'N1bHRfQWRkQW5kU3VidHJhY3RIAFIUYWRkQW5kU3VidHJhY3RSZXN1bHRCCgoIcmVzcG9uc2U=');

@$core.Deprecated('Use boardDetailsDescriptor instead')
const BoardDetails$json = {
  '1': 'BoardDetails',
  '2': [
    {'1': 'boardName', '3': 1, '4': 1, '5': 9, '10': 'boardName'},
    {'1': 'hasRgb', '3': 2, '4': 1, '5': 8, '10': 'hasRgb'},
  ],
};

/// Descriptor for `BoardDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boardDetailsDescriptor = $convert.base64Decode(
    'CgxCb2FyZERldGFpbHMSHAoJYm9hcmROYW1lGAEgASgJUglib2FyZE5hbWUSFgoGaGFzUmdiGA'
    'IgASgIUgZoYXNSZ2I=');

@$core.Deprecated('Use myProjectDetailsDescriptor instead')
const MyProjectDetails$json = {
  '1': 'MyProjectDetails',
  '2': [
    {'1': 'projectName', '3': 1, '4': 1, '5': 9, '10': 'projectName'},
  ],
};

/// Descriptor for `MyProjectDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectDetailsDescriptor = $convert.base64Decode(
    'ChBNeVByb2plY3REZXRhaWxzEiAKC3Byb2plY3ROYW1lGAEgASgJUgtwcm9qZWN0TmFtZQ==');

@$core.Deprecated('Use myProjectConfigurationDescriptor instead')
const MyProjectConfiguration$json = {
  '1': 'MyProjectConfiguration',
  '2': [
    {'1': 'userName', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'startupRed', '3': 2, '4': 1, '5': 13, '10': 'startupRed'},
    {'1': 'startupGreen', '3': 3, '4': 1, '5': 13, '10': 'startupGreen'},
    {'1': 'startupBlue', '3': 4, '4': 1, '5': 13, '10': 'startupBlue'},
  ],
};

/// Descriptor for `MyProjectConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectConfigurationDescriptor = $convert.base64Decode(
    'ChZNeVByb2plY3RDb25maWd1cmF0aW9uEhoKCHVzZXJOYW1lGAEgASgJUgh1c2VyTmFtZRIeCg'
    'pzdGFydHVwUmVkGAIgASgNUgpzdGFydHVwUmVkEiIKDHN0YXJ0dXBHcmVlbhgDIAEoDVIMc3Rh'
    'cnR1cEdyZWVuEiAKC3N0YXJ0dXBCbHVlGAQgASgNUgtzdGFydHVwQmx1ZQ==');

@$core.Deprecated('Use getProjectDetailsResponseDescriptor instead')
const GetProjectDetailsResponse$json = {
  '1': 'GetProjectDetailsResponse',
  '2': [
    {'1': 'projectDetails', '3': 1, '4': 1, '5': 11, '6': '.MyProjectDetails', '10': 'projectDetails'},
    {'1': 'currentConfiguration', '3': 2, '4': 1, '5': 11, '6': '.MyProjectConfiguration', '10': 'currentConfiguration'},
  ],
};

/// Descriptor for `GetProjectDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectDetailsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQcm9qZWN0RGV0YWlsc1Jlc3BvbnNlEjkKDnByb2plY3REZXRhaWxzGAEgASgLMhEuTX'
    'lQcm9qZWN0RGV0YWlsc1IOcHJvamVjdERldGFpbHMSSwoUY3VycmVudENvbmZpZ3VyYXRpb24Y'
    'AiABKAsyFy5NeVByb2plY3RDb25maWd1cmF0aW9uUhRjdXJyZW50Q29uZmlndXJhdGlvbg==');

@$core.Deprecated('Use setBoardLightColorRequestDescriptor instead')
const SetBoardLightColorRequest$json = {
  '1': 'SetBoardLightColorRequest',
  '2': [
    {'1': 'red', '3': 1, '4': 1, '5': 13, '10': 'red'},
    {'1': 'green', '3': 2, '4': 1, '5': 13, '10': 'green'},
    {'1': 'blue', '3': 3, '4': 1, '5': 13, '10': 'blue'},
  ],
};

/// Descriptor for `SetBoardLightColorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBoardLightColorRequestDescriptor = $convert.base64Decode(
    'ChlTZXRCb2FyZExpZ2h0Q29sb3JSZXF1ZXN0EhAKA3JlZBgBIAEoDVIDcmVkEhQKBWdyZWVuGA'
    'IgASgNUgVncmVlbhISCgRibHVlGAMgASgNUgRibHVl');

@$core.Deprecated('Use setBoardLightColorResponseDescriptor instead')
const SetBoardLightColorResponse$json = {
  '1': 'SetBoardLightColorResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `SetBoardLightColorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setBoardLightColorResponseDescriptor = $convert.base64Decode(
    'ChpTZXRCb2FyZExpZ2h0Q29sb3JSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEh'
    'gKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

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

@$core.Deprecated('Use myProjectCommandDescriptor instead')
const MyProjectCommand$json = {
  '1': 'MyProjectCommand',
  '2': [
    {'1': 'noArgCommand', '3': 1, '4': 1, '5': 14, '6': '.NoArgCommands', '9': 0, '10': 'noArgCommand'},
    {'1': 'helloQromaRequest', '3': 2, '4': 1, '5': 11, '6': '.HelloQromaRequest', '9': 0, '10': 'helloQromaRequest'},
    {'1': 'mathRequest', '3': 3, '4': 1, '5': 11, '6': '.MathRequest', '9': 0, '10': 'mathRequest'},
    {'1': 'setBoardLightColorRequest', '3': 4, '4': 1, '5': 11, '6': '.SetBoardLightColorRequest', '9': 0, '10': 'setBoardLightColorRequest'},
    {'1': 'setMyProjectConfigurationRequest', '3': 5, '4': 1, '5': 11, '6': '.MyProjectConfiguration', '9': 0, '10': 'setMyProjectConfigurationRequest'},
  ],
  '8': [
    {'1': 'command'},
  ],
};

/// Descriptor for `MyProjectCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectCommandDescriptor = $convert.base64Decode(
    'ChBNeVByb2plY3RDb21tYW5kEjQKDG5vQXJnQ29tbWFuZBgBIAEoDjIOLk5vQXJnQ29tbWFuZH'
    'NIAFIMbm9BcmdDb21tYW5kEkIKEWhlbGxvUXJvbWFSZXF1ZXN0GAIgASgLMhIuSGVsbG9Rcm9t'
    'YVJlcXVlc3RIAFIRaGVsbG9Rcm9tYVJlcXVlc3QSMAoLbWF0aFJlcXVlc3QYAyABKAsyDC5NYX'
    'RoUmVxdWVzdEgAUgttYXRoUmVxdWVzdBJaChlzZXRCb2FyZExpZ2h0Q29sb3JSZXF1ZXN0GAQg'
    'ASgLMhouU2V0Qm9hcmRMaWdodENvbG9yUmVxdWVzdEgAUhlzZXRCb2FyZExpZ2h0Q29sb3JSZX'
    'F1ZXN0EmUKIHNldE15UHJvamVjdENvbmZpZ3VyYXRpb25SZXF1ZXN0GAUgASgLMhcuTXlQcm9q'
    'ZWN0Q29uZmlndXJhdGlvbkgAUiBzZXRNeVByb2plY3RDb25maWd1cmF0aW9uUmVxdWVzdEIJCg'
    'djb21tYW5k');

@$core.Deprecated('Use myProjectResponseDescriptor instead')
const MyProjectResponse$json = {
  '1': 'MyProjectResponse',
  '2': [
    {'1': 'invalidCommandResponse', '3': 1, '4': 1, '5': 11, '6': '.InvalidCommandResponse', '9': 0, '10': 'invalidCommandResponse'},
    {'1': 'helloQromaResponse', '3': 2, '4': 1, '5': 11, '6': '.HelloQromaResponse', '9': 0, '10': 'helloQromaResponse'},
    {'1': 'mathResponse', '3': 3, '4': 1, '5': 11, '6': '.MathResponse', '9': 0, '10': 'mathResponse'},
    {'1': 'getBoardDetailsResponse', '3': 4, '4': 1, '5': 11, '6': '.BoardDetails', '9': 0, '10': 'getBoardDetailsResponse'},
    {'1': 'setBoardLightColorResponse', '3': 5, '4': 1, '5': 11, '6': '.SetBoardLightColorResponse', '9': 0, '10': 'setBoardLightColorResponse'},
    {'1': 'getProjectDetailsResponse', '3': 6, '4': 1, '5': 11, '6': '.GetProjectDetailsResponse', '9': 0, '10': 'getProjectDetailsResponse'},
  ],
  '8': [
    {'1': 'response'},
  ],
};

/// Descriptor for `MyProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List myProjectResponseDescriptor = $convert.base64Decode(
    'ChFNeVByb2plY3RSZXNwb25zZRJRChZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlGAEgASgLMhcuSW'
    '52YWxpZENvbW1hbmRSZXNwb25zZUgAUhZpbnZhbGlkQ29tbWFuZFJlc3BvbnNlEkUKEmhlbGxv'
    'UXJvbWFSZXNwb25zZRgCIAEoCzITLkhlbGxvUXJvbWFSZXNwb25zZUgAUhJoZWxsb1Fyb21hUm'
    'VzcG9uc2USMwoMbWF0aFJlc3BvbnNlGAMgASgLMg0uTWF0aFJlc3BvbnNlSABSDG1hdGhSZXNw'
    'b25zZRJJChdnZXRCb2FyZERldGFpbHNSZXNwb25zZRgEIAEoCzINLkJvYXJkRGV0YWlsc0gAUh'
    'dnZXRCb2FyZERldGFpbHNSZXNwb25zZRJdChpzZXRCb2FyZExpZ2h0Q29sb3JSZXNwb25zZRgF'
    'IAEoCzIbLlNldEJvYXJkTGlnaHRDb2xvclJlc3BvbnNlSABSGnNldEJvYXJkTGlnaHRDb2xvcl'
    'Jlc3BvbnNlEloKGWdldFByb2plY3REZXRhaWxzUmVzcG9uc2UYBiABKAsyGi5HZXRQcm9qZWN0'
    'RGV0YWlsc1Jlc3BvbnNlSABSGWdldFByb2plY3REZXRhaWxzUmVzcG9uc2VCCgoIcmVzcG9uc2'
    'U=');

