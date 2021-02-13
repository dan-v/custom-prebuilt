#!/usr/bin/env bash

log "Applying MicroG sigspoof patch"
pushd "${AOSP_BUILD_DIR}"
patch -p1 --no-backup-if-mismatch < "platform/prebuilts/microg/00002-microg-sigspoof.patch"
popd