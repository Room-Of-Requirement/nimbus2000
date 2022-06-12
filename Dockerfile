FROM ubuntu:22.04@sha256:bace9fb0d5923a675c894d5c815da75ffe35e24970166a48a4460a48ae6e0d19

RUN apt-get update && apt-get install -y wget git zsh rclone sudo curl vim nano beets git-lfs

ENV USER="jack"
RUN useradd -ms /usr/bin/zsh ${USER}
USER ${USER}
WORKDIR /home/${USER}
