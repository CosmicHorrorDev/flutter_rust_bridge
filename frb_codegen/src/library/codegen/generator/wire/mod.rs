mod c;
mod dart;
mod rust;

use crate::codegen::generator::output::OutputCode;
use crate::codegen::ir::pack::IrPack;
use anyhow::Result;

pub(crate) fn generate(ir_pack: &IrPack) -> Result<OutputCode> {
    todo!()
}
