# genisoimage Docker image
[![Docker Stars](https://img.shields.io/docker/stars/wallernetwork/genisoimage)](https://hub.docker.com/r/wallernetwork/genisoimage)
[![Docker Pulls](https://img.shields.io/docker/pulls/wallernetwork/genisoimage)](https://hub.docker.com/r/wallernetwork/genisoimage/tags)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/wallernetwork/genisoimage/latest)](https://hub.docker.com/r/wallernetwork/genisoimage/tags)
[![GitHub issues](https://img.shields.io/github/issues/wallernetwork/docker-genisoimage)](https://github.com/wallernetwork/docker-genisoimage/issues)
[![Maintainer](https://img.shields.io/badge/maintainer-Philipp%20Waller-blue)](https://github.com/philippwaller)

This docker image provides [genisoimage](https://manpages.debian.org/bullseye/genisoimage/genisoimage.1.en.html), a pre-mastering program to generate ISO9660/Joliet/HFS hybrid filesystems.

All available images are published on [Docker Hub](https://hub.docker.com/r/wallernetwork/genisoimage) & [GitHub Packages](https://github.com/wallernetwork/docker-genisoimage/pkgs/container/genisoimage).

## How to use this image

#### Pull the latest image from Docker Hub:
    docker pull wallernetwork/genisoimage

#### Get a list of valid options:
    docker run --rm wallernetwork/genisoimage -help

#### Create a cloud-init iso image:
    docker run --rm \
        -v "$(pwd)/meta-data.yml:/data/meta-data" \
        -v "$(pwd)/user-data.yml:/data/user-data" \
        -v "$(pwd)/output:/data/output" \
        wallernetwork/genisoimage -r \
        -output /data/output/cidata.iso \
        -V cidata \
        -J user-data meta-data
