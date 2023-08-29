use crate::blade_setting::BladeType;
use crate::module::{get_lucet_module, BladeModule};

use lucet_runtime::InstanceHandle;
use std::fmt;

const OUT_BYTES: usize = 32;

pub struct Blake2bModule {
    so: InstanceHandle,
}

impl BladeModule for Blake2bModule {
    fn new(blade_type: BladeType, blade_v1_1: bool) -> Self {
        Self {
            so: get_lucet_module("wasm_obj/blake", blade_type, blade_v1_1),
        }
    }
}

impl Blake2bModule {
    /// Returns the encryption of `msg`. Result will have the same length as `msg`.
    pub fn blake2b(&mut self, key: &[u8], msg: &[u8]) -> Vec<u8> {
        // allocation
        let mut heap_base = unsafe {
            self.so.globals()[0].i_32 as u32 // seems like global 0 is the heap base?
        };
        let key_ptr = heap_base;
        heap_base += key.len() as u32;
        let msg_ptr = heap_base;
        heap_base += msg.len() as u32;
        let out_ptr = heap_base;

        // set up inputs
        let heap = self.so.heap_mut();
        let key_heap_idx = key_ptr as usize;
        for i in 0 .. key.len() {
            heap[key_heap_idx + i] = key[i];
        }
        let msg_heap_idx = msg_ptr as usize;
        for i in 0 .. msg.len() {
            heap[msg_heap_idx + i] = msg[i];
        }

        // call wasm
        let _ = self.so.run("blake2b", &[
            out_ptr.into(),
            OUT_BYTES.into(),
            key_ptr.into(),
            key.len().into(),
            msg_ptr.into(),
            msg.len().into(),
        ]).unwrap();

        let mut output = vec![];
        let heap = self.so.heap();
        let out_heap_idx = out_ptr as usize;
        for i in 0 .. OUT_BYTES {
            output.push(heap[out_heap_idx + i]);
        }
        output
    }
}


