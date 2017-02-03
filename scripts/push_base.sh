#!/bin/bash
TOPDIR="$(cd "$(dirname "$0")/.." || exit; pwd)"
IMAGE_NAME="presenter"
TAG_NAME="juanito/${IMAGE_NAME}"

# Works better if already logged in
docker build -t "$IMAGE_NAME" "${TOPDIR}/base"
docker tag "$IMAGE_NAME" "$TAG_NAME"
docker push "$TAG_NAME"
