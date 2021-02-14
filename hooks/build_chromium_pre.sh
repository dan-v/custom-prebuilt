#!/usr/bin/env bash

# if building chromium, apply patches prior to chromium build
if [ "${CHROMIUM_BUILD_DISABLED}" == "false" ]; then
    log "applying vanadium patches"
    git clone https://github.com/GrapheneOS/Vanadium.git "${ROOT_DIR}/vanadium"
    pushd "${CHROMIUM_BUILD_DIR}/src"
    git am --whitespace=nowarn ${ROOT_DIR}/vanadium/patches/*.patch
    popd
fi