FROM rust:1.80.1-slim-bullseye

ENV CARGO_TARGET_DIR=/tmp/target \
  DEBIAN_FRONTEND=noninteractive \
  LC_CTYPE=ja_JP.utf8 \
  LANG=ja_JP.utf8

ARG USER_NAME=rustuser
ARG UID=1001
ARG GID=1001

RUN groupadd -g ${GID} ${USER_NAME} \
    && useradd -u ${UID} -g ${GID} -s /bin/bash -d /home/${USER_NAME} ${USER_NAME}

WORKDIR /app

USER ${USER_NAME}
