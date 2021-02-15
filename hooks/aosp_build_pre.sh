#!/usr/bin/env bash

cd "${AOSP_BUILD_DIR}"

# apply microg sigspoof patch
log "applying microg sigspoof patch"
patch -p1 --no-backup-if-mismatch < "platform/prebuilts/microg/00002-microg-sigspoof.patch"

# apply community patches
log "applying community patch 00001-global-internet-permission-toggle.patch"
git clone https://github.com/rattlesnakeos/community_patches "${ROOT_DIR}/community_patches"
patch -p1 --no-backup-if-mismatch < "${ROOT_DIR}/community_patches/00001-global-internet-permission-toggle.patch"

# apply custom hosts file
custom_hosts_file="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
log "applying custom hosts file ${custom_hosts_file}"
retry wget -q -O "${AOSP_BUILD_DIR}/system/core/rootdir/etc/hosts" "${custom_hosts_file}"