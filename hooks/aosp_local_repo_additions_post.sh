#!/usr/bin/env bash

log "Removing local RattlesnakeOS Chromium manifest"
rm -f "${AOSP_BUILD_DIR}/.repo/local_manifests/001-chromium.xml"