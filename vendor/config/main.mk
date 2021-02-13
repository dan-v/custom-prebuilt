DEVICE_PACKAGE_OVERLAYS += vendor/custom/vendor/overlay/common

PRODUCT_PACKAGES += \
    TrichromeChrome \
    TrichromeWebView

PRODUCT_COPY_FILES += \
	vendor/custom/prebuilt/google_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_experience.xml
