#!/usr/bin/env bash

# if building chromium, apply patches prior to chromium build
if [ "${CHROMIUM_BUILD_DISABLED}" == "false" ]; then
    log "applying vanadium patches"
    vanadium_dir="${ROOT_DIR}/vanadium"
    git clone https://github.com/GrapheneOS/Vanadium.git "${vanadium_dir}"
    cd "${CHROMIUM_BUILD_DIR}/src"
    git am --whitespace=nowarn ${vanadium_dir}/patches/*.patch
fi