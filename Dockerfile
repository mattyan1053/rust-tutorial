FROM rust:1.80.1-slim-bullseye

ENV CARGO_TARGET_DIR=/tmp/target \
  DEBIAN_FRONTEND=noninteractive \
  LC_CTYPE=ja_JP.utf8 \
  LANG=ja_JP.utf8

RUN apt update -y \
    && apt install -y git curl

WORKDIR /app

