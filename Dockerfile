FROM rust:1.80.1-slim-bullseye

ENV CARGO_TARGET_DIR=/tmp/target \
  DEBIAN_FRONTEND=noninteractive \
  LC_CTYPE=ja_JP.utf8 \
  LANG=ja_JP.utf8

RUN apt update -y \
    && apt install -y git curl

ARG USER_NAME=rustuser
ARG UID=1001
ARG GID=1001

RUN groupadd -g ${GID} ${USER_NAME} \
    && useradd -m -u ${UID} -g ${GID} -s /bin/bash -d /home/${USER_NAME} ${USER_NAME}

USER ${USER_NAME}

RUN mkdir /home/${USER_NAME}/app
WORKDIR /home/${USER_NAME}/app
