use blade_benchmarks::{blake2b, blade_setting::BladeType, BladeModule};
use criterion::{black_box, criterion_group, criterion_main, Criterion};

struct Modules<T> {
    reference: T,
    //baseline_fence_with_v1_1: T,
    //baseline_fence_no_v1_1: T,
    //baseline_slh_with_v1_1: T,
    //baseline_slh_no_v1_1: T,
    lfence_with_v1_1: T,
    //lfence_no_v1_1: T,
    //lfence_per_block_with_v1_1: T,
    //lfence_per_block_no_v1_1: T,
    //slh_with_v1_1: T,
    //slh_no_v1_1: T,
}

impl<T: BladeModule> Modules<T> {
    fn new() -> Self {
        Self {
            reference: T::new(BladeType::None, false),
            //baseline_fence_with_v1_1: T::new(BladeType::BaselineFence, true),
            //baseline_fence_no_v1_1: T::new(BladeType::BaselineFence, false),
            //baseline_slh_with_v1_1: T::new(BladeType::BaselineSLH, true),
            //baseline_slh_no_v1_1: T::new(BladeType::BaselineSLH, false),
            lfence_with_v1_1: T::new(BladeType::Lfence, true),
            //lfence_no_v1_1: T::new(BladeType::Lfence, false),
            //lfence_per_block_with_v1_1: T::new(BladeType::LfencePerBlock, true),
            //lfence_per_block_no_v1_1: T::new(BladeType::LfencePerBlock, false),
            //slh_with_v1_1: T::new(BladeType::SLH, true),
            //slh_no_v1_1: T::new(BladeType::SLH, false),
        }
    }

    // Bench all the modules in this `Modules` with the given closure
    fn bench_all(&mut self, c: &mut Criterion, group_name: &str, f: impl Fn(&mut T)) {
        let mut group = c.benchmark_group(group_name);
        group.bench_function("Ref", |b| b.iter(|| {
            f(&mut self.reference);
        }));
        /*
        group.bench_function("Baseline-F with v1.1", |b| b.iter(|| {
            f(&mut self.baseline_fence_with_v1_1);
        }));
        group.bench_function("Baseline-F no v1.1", |b| b.iter(|| {
            f(&mut self.baseline_fence_no_v1_1);
        }));
        group.bench_function("Baseline-S with v1.1", |b| b.iter(|| {
            f(&mut self.baseline_slh_with_v1_1);
        }));
        group.bench_function("Baseline-S no v1.1", |b| b.iter(|| {
            f(&mut self.baseline_slh_no_v1_1);
        }));
        */
        group.bench_function("Lfence with v1.1", |b| b.iter(|| {
            f(&mut self.lfence_with_v1_1);
        }));
        /*
        group.bench_function("Lfence no v1.1", |b| b.iter(|| {
            f(&mut self.lfence_no_v1_1);
        }));
        
        group.bench_function("LfencePerBlock with v1.1", |b| b.iter(|| {
            f(&mut self.lfence_per_block_with_v1_1);
        }));
        group.bench_function("LfencePerBlock no v1.1", |b| b.iter(|| {
            f(&mut self.lfence_per_block_no_v1_1);
        }));
    
        group.bench_function("SLH with v1.1", |b| b.iter(|| {
            f(&mut self.slh_with_v1_1);
        }));
        group.bench_function("SLH no v1.1", |b| b.iter(|| {
            f(&mut self.slh_no_v1_1);
        }));
        */
    }
}

pub fn blake2b_fun(c: &mut Criterion) {
    lucet_runtime::lucet_internal_ensure_linked();

    let mut modules = Modules::<blake2b::Blake2bModule>::new();
    let message = String::from("Cryptographic Component - Blake2b hash function").into_bytes();
    let key = String::from("Blake2b Project").into_bytes();

    modules.bench_all(c, "blake2b hash of a message", |m| {
        m.blake2b(&key,&message);
    });
}

pub fn get_some_bytes(howmany: usize) -> Vec<u8> {
    let mut data = Vec::with_capacity(howmany);
    assert_eq!(howmany % 8, 0, "this function expects a multiple of 8 bytes");
    let full_1024s = howmany / 1024;
    let leftover_bytes = howmany % 1024;
    for _ in 0 .. full_1024s {
        for i in 0 .. 128 {
            data.push(0xfa - i);
            data.push(0xce - i);
            data.push(0x1f + i);
            data.push(0x31 + i);
            data.push(0x78 + (i/2));
            data.push(0x04 + (3*i/2));
            data.push(0xaa - (i/2));
            data.push(0x32 + i);
        }
    }
    for i in 0 .. (leftover_bytes/8) as u8 {
        data.push(0xfa - i);
        data.push(0xce - i);
        data.push(0x1f + i);
        data.push(0x31 + i);
        data.push(0x78 + (i/2));
        data.push(0x04 + (3*i/2));
        data.push(0xaa - (i/2));
        data.push(0x32 + i);
    }
    data
}


criterion_group!(blake2b, blake2b_fun);
criterion_main!(blake2b);
