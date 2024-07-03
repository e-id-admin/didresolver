cargo build --release
cargo ndk -o ./bindings/kotlin/jniLibs --manifest-path ./Cargo.toml -t armv7-linux-androideabi build --release
cargo run --bin uniffi-bindgen generate --library target/release/libdidresolver.so --language kotlin --out-dir bindings/kotlin