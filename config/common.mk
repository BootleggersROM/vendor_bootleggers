PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup tool
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/bootleggers/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/bootleggers/prebuilt/common/bin/50-bootleg.sh:system/addon.d/50-bootleg.sh \
    vendor/bootleggers/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh

# Backup services whitelist
PRODUCT_COPY_FILES += \
    vendor/bootleggers/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Gzosp-specific init file
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/init.local.rc:root/init.bootleg.rc

# Copy LatinIME for gesture typing
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/bootleggers/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/bootleggers/prebuilt/common/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Gzosp-specific startup services
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/bootleggers/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/bootleggers/prebuilt/common/bin/sysinit:system/bin/sysinit

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Development \
    SpareParts \
    LockClock \
    su

# Optional packages
PRODUCT_PACKAGES += \
    Basic \
    LiveWallpapersPicker \
    PhaseBeam

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Extra Optional packages
PRODUCT_PACKAGES += \
    Calculator \
    LatinIME \
    BluetoothExt \
    CameraRoll \
    LawnchairStable \
    LawnchairFeed \
    MiXplorerPrebuilt \
    RetroMusic \
    ViaPrebuilt

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g


PRODUCT_PACKAGES += \
    charger_res_images

# DU Utils library
#PRODUCT_BOOTLEG_JARS += \
#    org.dirtyunicorns.utils

# DU Utils library
#PRODUCT_PACKAGES += \
#    org.dirtyunicorns.utils

#ifeq ($(DEFAULT_ROOT_METHOD),magisk)
# Magisk Manager
#PRODUCT_PACKAGES += \
#    MagiskManager

# Magisk
#PRODUCT_COPY_FILES += \
#   vendor/bootleggers/prebuilt/common/addon.d/magisk.zip:system/addon.d/magisk.zip
#endif

#ifeq ($(DEFAULT_ROOT_METHOD),supersu)
# SuperSU
#PRODUCT_COPY_FILES += \
#   vendor/bootleggers/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
#   vendor/bootleggers/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
#endif

# Explict rootless defined, or none of the root methods defined,
# default rootless : nothing todo
#ifeq ($(DEFAULT_ROOT_METHOD),rootless)
#endif

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Storage manager
PRODUCT_PROPERTY_OVERRIDES += \
    ro.storage_manager.enabled=true

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGES += \
    AndroidDarkThemeOverlay \
    SettingsDarkThemeOverlay

PRODUCT_PACKAGE_OVERLAYS += vendor/bootleggers/overlay/common

# Boot animation include
ifneq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))

# determine the smaller dimension
TARGET_BOOTANIMATION_SIZE := $(shell \
  if [ $(TARGET_SCREEN_WIDTH) -lt $(TARGET_SCREEN_HEIGHT) ]; then \
    echo $(TARGET_SCREEN_WIDTH); \
  else \
    echo $(TARGET_SCREEN_HEIGHT); \
  fi )

# get a sorted list of the sizes
bootanimation_sizes := $(subst .zip,, $(shell ls vendor/bootleggers/prebuilt/common/bootanimation))
bootanimation_sizes := $(shell echo -e $(subst $(space),'\n',$(bootanimation_sizes)) | sort -rn)

# find the appropriate size and set
define check_and_set_bootanimation
$(eval TARGET_BOOTANIMATION_NAME := $(shell \
  if [ -z "$(TARGET_BOOTANIMATION_NAME)" ]; then
    if [ $(1) -le $(TARGET_SCREEN_WIDTH) ]; then \
      echo $(1); \
      exit 0; \
    fi;
  fi;
  echo $(TARGET_BOOTANIMATION_NAME); ))
endef
$(foreach size,$(bootanimation_sizes), $(call check_and_set_bootanimation,$(size)))

ifeq ($(TARGET_BOOTANIMATION_HALF_RES),true)
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bootanimation/halfres/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
else
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bootanimation/$(TARGET_BOOTANIMATION_NAME).zip:system/media/bootanimation.zip
endif
endif

# Versioning System
# Bootleggers version over here.
PRODUCT_VERSION_MAJOR = Oreo
PRODUCT_VERSION_MINOR = BluePrint
PRODUCT_VERSION_MAINTENANCE = 1.9
BOOTLEG_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
ifdef BOOTLEG_BUILD_EXTRA
    BOOTLEG_POSTFIX := -$(BOOTLEG_BUILD_EXTRA)
endif

ifndef BOOTLEG_BUILD_TYPE
    BOOTLEG_BUILD_TYPE := Unshishufied
endif

# Set all versions
BOOTLEG_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD).$(PRODUCT_VERSION_MAINTENANCE).$(BOOTLEG_BUILD_TYPE)$(BOOTLEG_POSTFIX)
BOOTLEG_MOD_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD).$(PRODUCT_VERSION_MAINTENANCE).$(BOOTLEG_BUILD_TYPE)$(BOOTLEG_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    bootleg.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.bootleg.version=$(BOOTLEG_VERSION) \
    ro.modversion=$(BOOTLEG_MOD_VERSION) \
    ro.bootleg.buildtype=$(BOOTLEG_BUILD_TYPE)

# Google sounds
include vendor/bootleggers/google/GoogleAudio.mk

EXTENDED_POST_PROCESS_PROPS := vendor/bootleggers/tools/bootleg_process_props.py

#Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk
