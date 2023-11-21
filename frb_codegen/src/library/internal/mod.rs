use crate::library::commands::ffigen::ffigen_raw;
use log::info;
use serde_json::json;
use std::env;
use std::path::PathBuf;

pub fn generate() -> anyhow::Result<()> {
    let repo_base_dir = PathBuf::from(env::var("CARGO_MANIFEST_DIR")?)
        .parent()
        .unwrap();
    info!("Determine repo_base_dir={repo_base_dir:?}");

    generate_dart_native_api()?;
    Ok(())
}

fn generate_dart_native_api() -> anyhow::Result<()> {
    info!("generate_dart_native_api");

    let json = json!({
        "output": "lib/src/ffigen_generated/dart_native_api.dart",
        "name": "DartCObject",
        "headers": {
          "entry-points": ["../frb_rust/src/dart_api/dart_native_api.h"],
          "include-directives": ["../frb_rust/src/dart_api/dart_native_api.h"],
        },
        "preamble": FFIGEN_PREAMBLE,
    });

    let dart_root = PathBuf::from("../frb_dart");

    ffigen_raw(&serde_json::to_string(&json)?, &dart_root)
}

const FFIGEN_PREAMBLE: &str = "// AUTO-GENERATED BY frb_codegen::internal command\n// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names, unused_field, library_private_types_in_public_api";
