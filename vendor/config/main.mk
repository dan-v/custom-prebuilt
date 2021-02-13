DEVICE_PACKAGE_OVERLAYS += vendor/custom/vendor/overlay/common

PRODUCT_PACKAGES += \
    Seedvault \
    F-Droid \
    F-DroidPrivilegedExtension \
    TrichromeChrome \
    TrichromeWebView

PRODUCT_COPY_FILES += \
	vendor/custom/vendor/prebuilt/google_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_experience.xml
