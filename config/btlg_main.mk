# Weather
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.android.providers.weather.xml \
    vendor/bootleggers/prebuilt/common/etc/default-permissions/com.android.providers.weather.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/com.android.providers.weather.xml

# Livedisplay
PRODUCT_COPY_FILES += \
    vendor/bootleggers/config/permissions/org.lineageos.livedisplay.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/org.lineageos.livedisplay.xml

# Ignore overlays on RRO builds
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/bootleggers/overlay \
    vendor/shishufied/overlays

# Call our special makefiles before anything
include vendor/bootleggers/config/btlg_packages.mk
include vendor/bootleggers/config/btlg_branding.mk

# Call the shishufied vendor to build all the personalization part
include vendor/shishufied/config.mk

# Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk
