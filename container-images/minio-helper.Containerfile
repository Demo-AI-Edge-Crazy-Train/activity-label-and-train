FROM registry.redhat.io/ubi9/ubi

USER 0

RUN dnf install -y git oc && \
    curl https://dl.min.io/client/mc/release/linux-amd64/mc -o /usr/local/bin/mc && \
    chmod +x /usr/local/bin/mc && \
    mkdir /.mc && \
    chmod 777 /.mc

USER 1001