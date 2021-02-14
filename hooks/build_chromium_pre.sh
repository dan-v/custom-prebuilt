#!/usr/bin/env bash

log "Applying Vanadium patches"
git clone https://github.com/GrapheneOS/Vanadium.git "${ROOT_DIR}/vanadium"
pushd "${CHROMIUM_BUILD_DIR}/src"
git am --whitespace=nowarn ${ROOT_DIR}/vanadium/patches/*.patch
popd