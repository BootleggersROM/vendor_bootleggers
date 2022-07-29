PRODUCT_BRAND ?= Bootleggers

# Versioning System
# Bootleggers version over here.
PRODUCT_VERSION_MAJOR = Sambunimbo
PRODUCT_VERSION_MINOR = niceparse.N
BOOTLEGGERS_VERSION_NUMBER := 6.8-Alpha
BOOTLEGGERS_SONGCODEURL = https://cutt.ly/xc0pxEL
BOOTLEGGERS_EPOCH := $(shell date +%s)
BOOTLEGGERS_POSTFIX := -$(shell date -d @$(BOOTLEGGERS_EPOCH) +"%Y%m%d-%H%M%S")

ifndef BOOTLEGGERS_BUILD_TYPE
    BOOTLEGGERS_BUILD_TYPE := Testing
endif

ifdef BOOTLEGGERS_BUILD_EXTRA
    BOOTLEGGERS_POSTFIX := -$(BOOTLEGGERS_BUILD_EXTRA)
    BOOTLEGGERS_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE)$(BOOTLEGGERS_POSTFIX)
else
    BOOTLEGGERS_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE)
endif

BOOTLEGGERS_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD).$(BOOTLEGGERS_VERSION_NUMBER)-$(BOOTLEGGERS_BUILD_TYPE)$(BOOTLEGGERS_POSTFIX)

PRODUCT_PACKAGES += \
    bootanimation.zip

ifneq ($(TARGET_USE_SINGLE_BOOTANIMATION),true)
    PRODUCT_PACKAGES += \
        bootanimation2.zip \
        bootanimation3.zip
endif

# Wallpaper overlay selection for larger (18:9) devices
#
# Enabled by default because most phones uses a 18:9 resolution, but can be disabled
BOOTLEGGERS_IS_LARGE_DEVICE ?= true
ifeq ($(BOOTLEGGERS_IS_LARGE_DEVICE),true)
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/wallpaper/largelads
else
    PRODUCT_PACKAGE_OVERLAYS += \
        vendor/bootleggers/overlay/wallpaper/common
endif
