// NOTE: This file is mimicking how a human developer writes tests,
// and is auto-generated from `dart_dynamic.rs` by frb_internal
// Please do not modify manually, but modify the origin and re-run frb_internal generator

// FRB_INTERNAL_GENERATOR: {"forbiddenDuplicatorModes": ["sse", "syncSse", "rustAsyncSse"]}

use flutter_rust_bridge::{DartDynamic, IntoDart};

pub async fn return_dart_dynamic_twin_rust_async() -> DartDynamic {
    vec!["foo".into_dart()].into_dart()
}
