DEVICE_PACKAGE_OVERLAYS += vendor/custom/vendor/overlay/common

# Vanadium
PRODUCT_PACKAGES += \
    TrichromeChrome \
    TrichromeWebView

# MicroG
PRODUCT_PACKAGES += \
    GmsCore \
    GsfProxy \
    FakeStore \
    com.google.android.maps.jar

# Fix for Google Camera
PRODUCT_COPY_FILES += \
	vendor/custom/prebuilt/google_experience.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/google_experience.xml
