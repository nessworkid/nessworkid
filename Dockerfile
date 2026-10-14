
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    git \
    systemd \
    dbus \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/laranode

RUN git clone --depth 1 \
    https://github.com/crivion/laranode.git .

EXPOSE 80

CMD ["/sbin/init"]
