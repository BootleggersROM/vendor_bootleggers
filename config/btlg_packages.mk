# Our Bootleg apps
PRODUCT_PACKAGES += \
    CameraRoll \
    MiXplorerPrebuilt \
    WallpaperPickerGoogle \
    MarkupGoogle \
    ShishuWalls \
    GugelClock \
    VisualizationWallpapers \
    GboardGoPreb \
    Jelly \
    Phonograph \
    WeatherClient \
    OmniStyle \
    Longshot \
    Recorder

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
    vendor/bootleggers/prebuilt/lawnchair/etc/permissions/privapp-permissions-lawnchair.xml:system/etc/permissions/privapp-permissions-lawnchair.xml \
    vendor/bootleggers/prebuilt/lawnchair/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml:system/etc/sysconfig/lawnchair-hiddenapi-package-whitelist.xml

    DEVICE_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/lawnchair
else
    PRODUCT_PACKAGES += \
        Launcher3QuickStep
endif

# DU-Fonts
PRODUCT_PACKAGES += \
    CustomFonts

# Cutout control overlays
PRODUCT_PACKAGES += \
    HideCutout \
    StatusBarStock

# Call the overlays folder to build all the rest 
include packages/overlays/Shishufied/shishu.mk

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
