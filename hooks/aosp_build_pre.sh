#!/usr/bin/env bash

# add microg sigspoof patch. microg also requires adding microg prebuilts in vendor/config/main.mk
log "applying microg sigspoof patch"
pushd "${AOSP_BUILD_DIR}"
patch -p1 --no-backup-if-mismatch < "platform/prebuilts/microg/00002-microg-sigspoof.patch"
popd

# apply community patches
log "applying community patch 00001-global-internet-permission-toggle.patch"
git clone https://github.com/RattlesnakeOS/community_patches "${ROOT_DIR}/community_patches"
pushd "${AOSP_BUILD_DIR}"
patch -p1 --no-backup-if-mismatch < "${ROOT_DIR}/community_patches/00001-global-internet-permission-toggle.patch"
popd