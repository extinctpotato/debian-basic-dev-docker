FROM debian:latest

RUN apt -yqq update && apt -yqq upgrade

RUN apt -yqq install build-essential vim python3 python3-pip git ninja-build flex htop man tig wget curl

COPY config/bashrc /root/.bashrc

RUN wget -O /usr/bin/tmux https://gitlab.com/extinct_potato/tmux/-/jobs/386867622/artifacts/raw/tmux
