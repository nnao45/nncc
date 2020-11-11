FROM debian:slim

RUN sudo apt update
RUN sudo apt install -y gcc make git binutils libc6-dev