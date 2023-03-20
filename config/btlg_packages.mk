# Our Bootleg apps bundle
## Core apps
PRODUCT_PACKAGES += \
    Jelly \
    LatinIME \
    MiXplorerPrebuilt \
    OmniStyle \
    OmniJaws \
    ParallelSpace \
    ShishufiedHeaders \
    ShishufiedWalls \
    ThemePicker

## Setting this as true to build our main apps, can be disabled
BOOTLEGGERS_BUILD_APPS_BUNDLE ?= true
## Whether we want to use Aperture instead of Camera2, can be disabled
BOOTLEGGERS_DEVICE_SUPPORTS_APERTURE ?= true
## Setting this as false to not ship gapps, can be enabled
WITH_GAPPS ?= false
WITH_MICROG ?= false

## Whether the device supports Aperture or want to use the regular camera2
ifeq ($(BOOTLEGGERS_DEVICE_SUPPORTS_APERTURE),true)
    PRODUCT_PACKAGES += \
        Aperture

    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/qrscan/aperture
else
    PRODUCT_PACKAGES += \
        Camera2
endif

## Adding our app bundle for AOSP and GApps
ifeq ($(BOOTLEGGERS_BUILD_APPS_BUNDLE),true)
    PRODUCT_PACKAGES += \
        Calendar \
        Email \
        Etar \
        ExactCalculator \
        NotallyPrebuilt \
        PrebuiltAuxio \
        QPGallery
endif

# Inlcude Google Apps
ifeq ($(WITH_GAPPS),true)
    $(call inherit-product, vendor/gapps/common/common-vendor.mk)
endif

# Inlcude MicroG
ifeq ($(WITH_MICROG),true)
    $(call inherit-product, vendor/foss/foss.mk)
endif

ifeq ($(BOOTLEGGERS_BUILD_TYPE),Shishufied)
    PRODUCT_PACKAGES += \
        ShishuOTA
endif

# Launcher Selection just in case
# Please, prepare for reports
ifeq ($(BOOTLEGGERS_SITDOWN),true)
    PRODUCT_PACKAGES += \
        Lawnchair

PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/bootleggers/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/lawnchair
else
    PRODUCT_PACKAGES += \
        Launcher3QuickStep
endif

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED ?= true
ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    FaceUnlockService
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face_unlock_service.enabled=$(TARGET_FACE_UNLOCK_SUPPORTED)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif

# Long Screenshot
PRODUCT_PACKAGES += \
    StitchImage

# Cutout control overlay
#PRODUCT_PACKAGES += \
#    NoCutoutOverlay

# Include Potato volume panels
-include packages/modules/VolumePanelPlugins/plugins.mk

### COMMENTED WASTELAND - MOVED TEMPORALLY HERE DUE TO WIP ###
#
#
# Some Extra packages required to be built from here
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils \
#    OmniStyle \
#    OmniJaws
#
# DU Utils library
#PRODUCT_BOOT_JARS += \
#    org.dirtyunicorns.utils
#
