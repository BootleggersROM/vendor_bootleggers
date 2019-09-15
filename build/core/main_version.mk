# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Bootleggers System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.bootleggers.version_number=$(BOOTLEGGERS_VERSION_NUMBER) \
    ro.bootleggers.releasetype=$(BOOTLEGGERS_BUILD_TYPE) \
    ro.bootleggers.version=$(BOOTLEGGERS_VERSION) \
    ro.bootleggers.buildshort=$(BOOTLEGGERS_MOD_SHORT) \
    ro.bootleggers.songcodename=$(PRODUCT_VERSION_MINOR) \
    ro.bootleggers.songcodeurl=$(BOOTLEGGERS_SONGCODEURL) \
    ro.bootleggers.display.version=$(BOOTLEGGERS_VERSION) \
    ro.bootleggers.build.date=$(BOOTLEGGERS_EPOCH)
