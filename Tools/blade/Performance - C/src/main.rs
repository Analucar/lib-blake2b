use blade_benchmarks::{blake2b, blade_setting::BladeType, BladeModule};

fn main() {
    lucet_runtime::lucet_internal_ensure_linked();

    let mut module = blake2b::Blake2bModule::new(BladeType::None, false);
    let message = String::from("Cryptographic Component - Blake2b hash function").into_bytes();
    let key = String::from("Blake2b Project").into_bytes();

    let hash = module.blake2b(&key, &message);

    println!("Blake2b hash of \"{}\" with key {} is {}", std::str::from_utf8(&message).unwrap(), std::str::from_utf8(&key).unwrap(), hex::encode(&hash));
}