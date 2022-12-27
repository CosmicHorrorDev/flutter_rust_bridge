// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.58.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

abstract class FlutterRustBridgeExample {
  Future<Uint8List> drawMandelbrot(
      {required Size imageSize,
      required Point zoomPoint,
      required double scale,
      required int numThreads,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kDrawMandelbrotConstMeta;

  Future<String> passingComplexStructs({required TreeNode root, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kPassingComplexStructsConstMeta;

  Future<BoxedPoint> returningStructsWithBoxedFields({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kReturningStructsWithBoxedFieldsConstMeta;

  Future<int> offTopicMemoryTestInputArray({required Uint8List input, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestInputArrayConstMeta;

  Future<Uint8List> offTopicMemoryTestOutputZeroCopyBuffer({required int len, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestOutputZeroCopyBufferConstMeta;

  Future<Uint8List> offTopicMemoryTestOutputVecU8({required int len, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestOutputVecU8ConstMeta;

  Future<int> offTopicMemoryTestInputVecOfObject({required List<Size> input, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestInputVecOfObjectConstMeta;

  Future<List<Size>> offTopicMemoryTestOutputVecOfObject({required int len, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestOutputVecOfObjectConstMeta;

  Future<int> offTopicMemoryTestInputComplexStruct({required TreeNode input, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestInputComplexStructConstMeta;

  Future<TreeNode> offTopicMemoryTestOutputComplexStruct({required int len, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicMemoryTestOutputComplexStructConstMeta;

  Future<int> offTopicDeliberatelyReturnError({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicDeliberatelyReturnErrorConstMeta;

  Future<int> offTopicDeliberatelyPanic({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOffTopicDeliberatelyPanicConstMeta;
}

class BoxedPoint {
  final Point point;

  BoxedPoint({
    required this.point,
  });
}

class Point {
  final double x;
  final double y;

  Point({
    required this.x,
    required this.y,
  });
}

class Size {
  final int width;
  final int height;

  Size({
    required this.width,
    required this.height,
  });
}

class TreeNode {
  final String name;
  final List<TreeNode> children;

  TreeNode({
    required this.name,
    required this.children,
  });
}
