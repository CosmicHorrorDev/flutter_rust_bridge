import 'dart:ffi' as ffi;

import 'package:flutter_rust_bridge/src/platform_types/platform_types.dart';

export 'package:flutter_rust_bridge/src/ffigen_generated/multi_package.dart'
    show WireSyncReturn;

/// Abstraction over a Dart SendPort and a JS MessagePort.
///
/// {@macro flutter_rust_bridge.only_for_generated_code}
typedef NativePortType = int;

/// {@macro flutter_rust_bridge.only_for_generated_code}
typedef PlatformPointer = ffi.Pointer<ffi.Void>;

/// {@macro flutter_rust_bridge.only_for_generated_code}
typedef DartPostCObject = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(ffi.Int64, ffi.Pointer<ffi.Void>)>>;

/// {@macro flutter_rust_bridge.only_for_generated_code}
class ExternalLibrary extends BaseExternalLibrary {
  /// {@macro flutter_rust_bridge.only_for_generated_code}
  final ffi.DynamicLibrary ffiDynamicLibrary;

  /// {@macro flutter_rust_bridge.only_for_generated_code}
  const ExternalLibrary(
      {required this.ffiDynamicLibrary, required super.debugInfo});

  /// {@macro flutter_rust_bridge.internal}
  factory ExternalLibrary.open(String path, {String debugInfo = ''}) =>
      ExternalLibrary(
        ffiDynamicLibrary: ffi.DynamicLibrary.open(path),
        debugInfo: 'by open($path)$debugInfo',
      );

  /// {@macro flutter_rust_bridge.internal}
  factory ExternalLibrary.process({String debugInfo = ''}) => ExternalLibrary(
        ffiDynamicLibrary: ffi.DynamicLibrary.process(),
        debugInfo: 'by process()$debugInfo',
      );
}
