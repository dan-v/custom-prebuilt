#!/usr/bin/env bash

# if not building chromium, remove default chromium manifest.
if [ "${CHROMIUM_BUILD_DISABLED}" == "true" ]; then
    log "removing local manifest 001-chromium.xml"
    rm -f "${AOSP_BUILD_DIR}/.repo/local_manifests/001-chromium.xml"
fi