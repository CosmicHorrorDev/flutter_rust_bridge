use super::{CodecTrait, Rust2DartMessageTrait};
use crate::platform_types::DartAbi;
use std::any::Any;

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct CstCodec;

impl CodecTrait for CstCodec {
    type Message = Rust2DartMessageCst;

    fn encode_panic(_error: &Box<dyn Any + Send>) -> Self::Message {
        unreachable!()
    }

    fn encode_close_stream() -> Self::Message {
        unreachable!()
    }
}

pub struct Rust2DartMessageCst(DartAbi);

impl Rust2DartMessageTrait for Rust2DartMessageCst {
    type WireSyncType = ();

    fn simplest() -> Self {
        unreachable!()
    }

    fn into_dart_abi(self) -> DartAbi {
        unreachable!()
    }

    unsafe fn from_raw_wire_sync(_raw: Self::WireSyncType) -> Self {
        unreachable!()
    }

    fn into_raw_wire_sync(self) -> Self::WireSyncType {
        unreachable!()
    }
}
