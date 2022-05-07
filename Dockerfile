# Use the official Rust image.
FROM rust

# Copy local code to the container image.
WORKDIR /usr/src/app
COPY . .

# Install production dependencies ans build and a release artifact.
RUN cargo build --release

EXPOSE 8080

ENTRYPOINT [ "target/release/actix-web-on-cloud-run" ]
