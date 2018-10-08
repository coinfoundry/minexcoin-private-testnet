FROM ubuntu:xenial
MAINTAINER oliver@weichhold.com

ADD https://github.com/just-containers/s6-overlay/releases/download/v1.17.2.0/s6-overlay-amd64.tar.gz \
    https://minexcoin.com/bin/minexcoin-core-1.3.1/minexcoin-v1.3.1.0-x86_64-linux-gnu.tar.gz /tmp/

RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C / && \
    cd /tmp && tar xvf minexcoin*.tar.gz && cp -r /tmp/x86_64-linux-gnu/bin/* /usr/bin && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 16101 16102 16103

ENTRYPOINT ["/init"]
VOLUME ["/data"]
ADD rootfs /
