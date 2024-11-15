#!/usr/bin/env bash
mkdir ./iso-output
sudo podman run --rm --privileged --volume ./iso-output:/build-container-installer/build --security-opt label=disable --pull=newer \
ghcr.io/jasonn3/build-container-installer:latest \
IMAGE_REPO=ghcr.io/ \
IMAGE_NAME=weird-os \
IMAGE_TAG=latest \
VARIANT=Silverblue # should match the variant your image is based on