FROM debian:bullseye-slim

ARG BUILD_DATE
ARG REVISION

LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.authors="Philipp Waller"
LABEL org.opencontainers.image.url="https://github.com/wallernetwork/docker-genisoimage"
LABEL org.opencontainers.image.documentation="https://github.com/wallernetwork/docker-genisoimage"
LABEL org.opencontainers.image.source="https://github.com/wallernetwork/docker-genisoimage"
LABEL org.opencontainers.image.version="1.1.11"
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.vendor="Wallernet.work"
LABEL org.opencontainers.image.license="MIT"
LABEL org.opencontainers.image.ref.name="wallernetwork/genisoimage"
LABEL org.opencontainers.image.title="genisoimage"
LABEL org.opencontainers.image.description="genisoimage - create ISO9660/Joliet/HFS filesystem with optional Rock Ridge attributes"
LABEL org.opencontainers.image.base.name="registry.hub.docker.com/_/debian:bullseye-slim"

RUN apt-get update -qq \
 && apt-get install -y --no-install-recommends genisoimage \
 && apt-get purge -y --auto-remove \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
ENTRYPOINT ["/usr/bin/genisoimage"]
