#cargo packages
cargo install cargo-leptos
cargo install cargofmt

# for leptos
rustup toolchain install nightly
rustup default nightly
rustup target add wasm32-unknown-unknown
