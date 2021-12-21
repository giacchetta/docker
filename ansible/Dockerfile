FROM fedora:latest

ARG ANSIBLE_VERSION
ARG PIP_VERSION

RUN dnf install -y git

RUN python3 -m ensurepip --upgrade && \
    python3 -m pip install --upgrade pip==${PIP_VERSION} wheel && \
    python3 -m pip install --upgrade \
        ansible==${ANSIBLE_VERSION} \
        ansible-lint \
        botocore \
        boto \
        boto3 \
        lxml \
        passlib \
        awscli
