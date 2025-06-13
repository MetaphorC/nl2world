
FROM rust:1.59.0

WORKDIR /app

RUN apt update && apt install lld clang -l

COPY . .

RUN cargo build --release

ENTRYPOINT [./target/release/zero2prod"]
