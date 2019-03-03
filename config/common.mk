PRODUCT_BRAND ?= Bootleggers

# Versioning System
# Bootleggers version over here.
PRODUCT_VERSION_MAJOR = Pie
PRODUCT_VERSION_MINOR = niceparse.Goodbye_Star_Girl
BOOTLEGGERS_VERSION_NUMBER := 4.0-Stable
BOOTLEGGERS_SONGCODEURL = http://bit.ly/2Aa2WmA
BOOTLEGGERS_EPOCH := $(shell date +%s)
BOOTLEGGERS_POSTFIX := -$(shell date -d @$(BOOTLEGGERS_EPOCH) +"%Y%m%d-%H%M%S")

ifndef BOOTLEGGERS_BUILD_TYPE
    BOOTLEGGERS_BUILD_TYPE := Unshishufied
endif

ifdef BOOTLEGGERS_BUILD_EXTRA
    BOOTLEGGERS_POSTFIX := -$(BOOTLEGGERS_BUILD_EXTRA)
    BOOTLEGGERS_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE)$(BOOTLEGGERS_POSTFIX)
else
    BOOTLEGGERS_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD)-$(BOOTLEGGERS_BUILD_TYPE)
endif

BOOTLEGGERS_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEGGERS_BUILD).$(BOOTLEGGERS_VERSION_NUMBER)-$(BOOTLEGGERS_BUILD_TYPE)$(BOOTLEGGERS_POSTFIX)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    keyguard.no_require_sim=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.selinux=1

ifneq ($(TARGET_BUILD_VARIANT),user)
# Thank you, please drive thru!
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += persist.sys.dun.override=0
endif

ifeq ($(BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE),)
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/data/cache
else
  PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.device.cache_dir=/cache
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/bootleggers/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/bootleggers/prebuilt/common/bin/50-bootleggers.sh:system/addon.d/50-bootleggers.sh \
    vendor/bootleggers/prebuilt/common/bin/blacklist:system/addon.d/blacklist

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/bootleggers/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/bootleggers/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# priv-app whitelist
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/permissions/privapp-permissions-bootleg.xml:system/etc/permissions/privapp-permissions-bootleg.xml

# Backup Services whitelist
PRODUCT_COPY_FILES += \
    vendor/bootleggers/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# init.d support
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/sysinit:system/bin/sysinit

# Copy all Bootleggers-specific init rc files
$(foreach f,$(wildcard vendor/bootleggers/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):system/etc/init/$(notdir $f)))

# Copy over added mimetype supported in libcore.net.MimeUtils
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/lib/content-types.properties:system/lib/content-types.properties

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# TWRP
ifeq ($(WITH_TWRP),true)
include vendor/bootleggers/config/twrp.mk
endif

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Extra tools in Bootleggers
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    fsck.ntfs \
    gdbserver \
    htop \
    lib7z \
    libsepol \
    micro_bench \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs \
    oprofiled \
    pigz \
    powertop \
    sqlite3 \
    strace \
    tune2fs \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# exFAT tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    mkfs.exfat

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Storage manager
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.storage_manager.enabled=true

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# Disable rescue party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true



# These packages are excluded from user builds
ifneq ($(TARGET_BUILD_VARIANT),user)
PRODUCT_PACKAGES += \
    procmem \
    procrank

# Conditionally build in su
ifeq ($(WITH_SU),true)
PRODUCT_PACKAGES += \
    su
endif
endif

# Some props that we need for the google stuff we're adding
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.com.google.ime.height_ratio=1.05 \
    ro.com.google.ime.emoji_key=false

DEVICE_PACKAGE_OVERLAYS += vendor/bootleggers/overlay/common

-include $(WORKSPACE)/build_env/image-auto-bits.mk
-include vendor/bootleggers/config/partner_gms.mk

ifeq ($(TARGET_PROVIDES_TELEPHONY_EXT),)
ifneq ($(TARGET_NOT_REQUIRING_TELEPHONY_EXT),true)
include vendor/bootleggers/config/caf_fw.mk
endif
endif

include vendor/bootleggers/config/btlg_main.mk

$(call prepend-product-if-exists, vendor/extra/product.mk)
