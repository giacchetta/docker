FROM docker.io/jrei/systemd-ubuntu:focal

RUN apt update && apt install --yes --no-install-recommends --no-install-suggests \
    openssh-server \
    ssh-import-id
RUN ssh-import-id-gh giacchetta

EXPOSE 22
