#!/usr/bin/env bash

aosp_pre_build() {
  log_header "${FUNCNAME[0]}"

  local product_makefile="${AOSP_BUILD_DIR}/device/google/${DEVICE_FAMILY}/aosp_${DEVICE}.mk"
  if ! grep -q "vendor/custom/vendor/config/main.mk" "${product_makefile}"; then
    sed -i '/vendor\/google_devices\/crosshatch\/proprietary\/device-vendor.mk)/a \$(call inherit-product, vendor\/custom\/vendor\/config\/main.mk)' "${product_makefile}" || true
  fi
}