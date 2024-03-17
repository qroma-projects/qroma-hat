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

class MathOperation extends $pb.ProtobufEnum {
  static const MathOperation MathOp_NotSet = MathOperation._(0, _omitEnumNames ? '' : 'MathOp_NotSet');
  static const MathOperation MathOp_Add = MathOperation._(1, _omitEnumNames ? '' : 'MathOp_Add');
  static const MathOperation MathOp_Subtract = MathOperation._(2, _omitEnumNames ? '' : 'MathOp_Subtract');
  static const MathOperation MathOp_Add_And_Subtract = MathOperation._(3, _omitEnumNames ? '' : 'MathOp_Add_And_Subtract');

  static const $core.List<MathOperation> values = <MathOperation> [
    MathOp_NotSet,
    MathOp_Add,
    MathOp_Subtract,
    MathOp_Add_And_Subtract,
  ];

  static final $core.Map<$core.int, MathOperation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MathOperation? valueOf($core.int value) => _byValue[value];

  const MathOperation._($core.int v, $core.String n) : super(v, n);
}

class NoArgCommands extends $pb.ProtobufEnum {
  static const NoArgCommands Nac_NotSet = NoArgCommands._(0, _omitEnumNames ? '' : 'Nac_NotSet');
  static const NoArgCommands Nac_GetProjectDetailsRequest = NoArgCommands._(1, _omitEnumNames ? '' : 'Nac_GetProjectDetailsRequest');
  static const NoArgCommands Nac_GetBoardDetailsRequest = NoArgCommands._(2, _omitEnumNames ? '' : 'Nac_GetBoardDetailsRequest');
  static const NoArgCommands Nac_SaveCurrentConfiguration = NoArgCommands._(3, _omitEnumNames ? '' : 'Nac_SaveCurrentConfiguration');
  static const NoArgCommands Nac_LoadSavedConfiguration = NoArgCommands._(4, _omitEnumNames ? '' : 'Nac_LoadSavedConfiguration');

  static const $core.List<NoArgCommands> values = <NoArgCommands> [
    Nac_NotSet,
    Nac_GetProjectDetailsRequest,
    Nac_GetBoardDetailsRequest,
    Nac_SaveCurrentConfiguration,
    Nac_LoadSavedConfiguration,
  ];

  static final $core.Map<$core.int, NoArgCommands> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NoArgCommands? valueOf($core.int value) => _byValue[value];

  const NoArgCommands._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
