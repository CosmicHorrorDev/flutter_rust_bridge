// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 1.82.4.

// ignore_for_file: invalid_use_of_internal_member, unused_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

Future<void> rustAutoOpaqueArgOwn(
        {required RwLockNonCloneSimpleTwinNormal arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueArgOwn(arg: arg, hint: hint);

Future<void> rustAutoOpaqueArgBorrow(
        {required RwLockNonCloneSimpleTwinNormal arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueArgBorrow(arg: arg, hint: hint);

Future<void> rustAutoOpaqueArgMutBorrow(
        {required RwLockNonCloneSimpleTwinNormal arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueArgMutBorrow(arg: arg, hint: hint);

Future<RwLockNonCloneSimpleTwinNormal> rustAutoOpaqueReturnOwn(
        {dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueReturnOwn(hint: hint);

Future<RwLockNonCloneSimpleTwinNormal> rustAutoOpaqueArgOwnAndReturnOwn(
        {required RwLockNonCloneSimpleTwinNormal arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueArgOwnAndReturnOwn(arg: arg, hint: hint);

Future<void> rustAutoOpaqueTwoArgs(
        {required RwLockNonCloneSimpleTwinNormal a,
        required RwLockNonCloneSimpleTwinNormal b,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTwoArgs(a: a, b: b, hint: hint);

Future<void> rustAutoOpaqueNormalAndOpaqueArg(
        {required RwLockNonCloneSimpleTwinNormal a,
        required String b,
        dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueNormalAndOpaqueArg(a: a, b: b, hint: hint);

/// "+" inside the type signature
Future<void> rustAutoOpaquePlusSignArg(
        {required RwLockBoxMyTraitTwinNormal arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaquePlusSignArg(arg: arg, hint: hint);

Future<RwLockBoxMyTraitTwinNormal> rustAutoOpaquePlusSignReturn(
        {dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaquePlusSignReturn(hint: hint);

Future<void> rustAutoOpaqueCallableArg(
        {required RwLockBoxFnStringString arg, dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueCallableArg(arg: arg, hint: hint);

Future<RwLockBoxFnStringString> rustAutoOpaqueCallableReturn({dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueCallableReturn(hint: hint);

Future<void> rustAutoOpaqueTraitObjectArgOwn(
        {required RwLockBoxHelloTraitTwinNormal arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api
        .rustAutoOpaqueTraitObjectArgOwn(arg: arg, expect: expect, hint: hint);

Future<void> rustAutoOpaqueTraitObjectArgBorrow(
        {required RwLockBoxHelloTraitTwinNormal arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectArgBorrow(
        arg: arg, expect: expect, hint: hint);

Future<void> rustAutoOpaqueTraitObjectArgMutBorrow(
        {required RwLockBoxHelloTraitTwinNormal arg,
        required String expect,
        dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectArgMutBorrow(
        arg: arg, expect: expect, hint: hint);

Future<RwLockBoxHelloTraitTwinNormal> rustAutoOpaqueTraitObjectReturnOwnOne(
        {dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectReturnOwnOne(hint: hint);

Future<RwLockBoxHelloTraitTwinNormal> rustAutoOpaqueTraitObjectReturnOwnTwo(
        {dynamic hint}) =>
    RustLib.instance.api.rustAutoOpaqueTraitObjectReturnOwnTwo(hint: hint);

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<AssertUnwindSafe < Box < dyn Fn (String) -> String + Send > >>>
@sealed
class RwLockBoxFnStringString extends RustOpaque {
  RwLockBoxFnStringString.fromWire(dynamic wire)
      : super.fromWire(wire, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib
        .instance.api.rust_arc_increment_strong_count_RwLockBoxFnStringString,
    rustArcDecrementStrongCount: RustLib
        .instance.api.rust_arc_decrement_strong_count_RwLockBoxFnStringString,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockBoxFnStringStringPtr,
  );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<Box<dyn HelloTraitTwinNormal>>>
@sealed
class RwLockBoxHelloTraitTwinNormal extends RustOpaque {
  RwLockBoxHelloTraitTwinNormal.fromWire(dynamic wire)
      : super.fromWire(wire, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_RwLockBoxHelloTraitTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockBoxHelloTraitTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockBoxHelloTraitTwinNormalPtr,
  );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<Box<dyn MyTraitTwinNormal + Send + Sync>>>
@sealed
class RwLockBoxMyTraitTwinNormal extends RustOpaque {
  RwLockBoxMyTraitTwinNormal.fromWire(dynamic wire)
      : super.fromWire(wire, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_RwLockBoxMyTraitTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockBoxMyTraitTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockBoxMyTraitTwinNormalPtr,
  );
}

// Rust type: flutter_rust_bridge::RustOpaque<std::sync::RwLock<NonCloneSimpleTwinNormal>>
@sealed
class RwLockNonCloneSimpleTwinNormal extends RustOpaque {
  RwLockNonCloneSimpleTwinNormal.fromWire(dynamic wire)
      : super.fromWire(wire, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount: RustLib.instance.api
        .rust_arc_increment_strong_count_RwLockNonCloneSimpleTwinNormal,
    rustArcDecrementStrongCount: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockNonCloneSimpleTwinNormal,
    rustArcDecrementStrongCountPtr: RustLib.instance.api
        .rust_arc_decrement_strong_count_RwLockNonCloneSimpleTwinNormalPtr,
  );
}
