PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_GENERIC_PROPERTIES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_GENERIC_PROPERTIES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_GENERIC_PROPERTIES += \
    keyguard.no_require_sim=true

PRODUCT_GENERIC_PROPERTIES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_GENERIC_PROPERTIES += \
    dalvik.vm.debug.alloc=0

# Backup tool
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/bootleggers/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/bootleggers/prebuilt/common/bin/50-bootleg.sh:system/addon.d/50-bootleg.sh \
    vendor/bootleggers/prebuilt/common/bin/clean_cache.sh:system/bin/clean_cache.sh

ifeq ($(AB_OTA_UPDATER),true)
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/backuptool_ab.sh:system/bin/backuptool_ab.sh \
    vendor/bootleggers/prebuilt/common/bin/backuptool_ab.functions:system/bin/backuptool_ab.functions \
    vendor/bootleggers/prebuilt/common/bin/backuptool_postinstall.sh:system/bin/backuptool_postinstall.sh
endif

# Backup services whitelist
PRODUCT_COPY_FILES += \
    vendor/bootleggers/config/permissions/backup.xml:system/etc/sysconfig/backup.xml

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# Bootleggers-specific init file
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/init.local.rc:root/init.bootleg.rc

# Copy LatinIME for gesture typing
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/bootleggers/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so

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

# Bootleggers-specific startup services
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/bootleggers/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/bootleggers/prebuilt/common/bin/sysinit:system/bin/sysinit

# Call special ringtones makefile
include vendor/bootleggers/config/common_audio.mk

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

# Call our external colors makefile to make it organized
include vendor/bootleggers/config/extra_colors.mk

ifneq ($(BOOTLEG_MINIMAL_BUILD), true)
    # Extra Optional packages
    PRODUCT_PACKAGES += \
        Calculator \
        LatinIME \
        BluetoothExt \
        CameraRoll \
        MiXplorerPrebuilt \
        RetroMusic \
        ViaPrebuilt \
        WallpaperPickerGoogle \
        GoogleMarkup

    #Our Bootleggers stuff
    PRODUCT_PACKAGES += \
        bootanimation.zip \
        Launcher3 \
        Recorder \
        ShishuWalls \
        VisualizationWallpapers 
else
    # Extra Optional packages
    PRODUCT_PACKAGES += \
        LatinIME \
        BluetoothExt \
        MiXplorerPrebuilt \
        ViaPrebuilt \
        WallpaperPickerGoogle \
        GoogleMarkup

    #Our Bootleggers stuff
    PRODUCT_PACKAGES += \
        bootanimation.zip \
        Launcher3
endif

ifneq ($(BOOTLEG_BUILD_TYPE), Unshishufied)
    PRODUCT_PACKAGES += \
        BootlegOTA
endif

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    fsck.exfat \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs \
    ntfsfix \
    ntfs-3g \
    curl

# Extra Stuff from Omni/DU/Whatever
PRODUCT_PACKAGES += \
    OmniStyle \
    OmniJaws

# Bootleggers Stuff - Copy to System fonts
PRODUCT_COPY_FILES += \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold.ttf:system/fonts/Gobold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/Gobold-Italic.ttf:system/fonts/Gobold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold.ttf:system/fonts/GoboldBold.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldBold-Italic.ttf:system/fonts/GoboldBold-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight.ttf:system/fonts/GoboldThinLight.ttf \
    vendor/bootleggers/prebuilt/fonts/gobold/GoboldThinLight-Italic.ttf:system/fonts/GoboldThinLight-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/roadrage/road_rage.ttf:system/fonts/RoadRage-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/snowstorm/snowstorm.ttf:system/fonts/Snowstorm-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/vcrosd/vcr_osd_mono.ttf:system/fonts/ThemeableClock-vcrosd.ttf \
    vendor/bootleggers/prebuilt/fonts/googlesans/GoogleSans-Regular.ttf:system/fonts/GoogleSans-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AdamCGPro-Regular.ttf:system/fonts/AdamCGPro-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlexanaNeue-Regular.ttf:system/fonts/AlexanaNeue-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/AlienLeague-Regular.ttf:system/fonts/AlienLeague-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Azedo-Light.ttf:system/fonts/Azedo-Light.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Italic.ttf:system/fonts/BigNoodleTilting-Italic.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/BigNoodleTilting-Regular.ttf:system/fonts/BigNoodleTilting-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Biko-Regular.ttf:system/fonts/Biko-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Blern-Regular.ttf:system/fonts/Blern-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/CoCoBiker-Regular.ttf:system/fonts/CoCoBiker-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Fester-Medium.ttf:system/fonts/Fester-Medium.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/GinoraSans-Regular.ttf:system/fonts/GinoraSans-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Inkferno-Regular.ttf:system/fonts/Inkferno-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Instruction-Regular.ttf:system/fonts/Instruction-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/JackLane-Regular.ttf:system/fonts/JackLane-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Metropolis1920-Regular.ttf:system/fonts/Metropolis1920-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Monad-Regular.ttf:system/fonts/Monad-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Neoneon-Regular.ttf:system/fonts/Neoneon-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Noir-Regular.ttf:system/fonts/Noir-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/North-Regular.ttf:system/fonts/North-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/OutrunFuture-Regular.ttf:system/fonts/OutrunFuture-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Qontra-Regular.ttf:system/fonts/Qontra-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Riviera-Regular.ttf:system/fonts/Riviera-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:system/fonts/ThemeableDate-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/FoxAndCat-Regular.ttf:system/fonts/ThemeableOwner-fc.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/TheOutbox-Regular.ttf:system/fonts/TheOutbox-Regular.ttf \
    vendor/bootleggers/prebuilt/fonts/fontage/Union-Regular.ttf:system/fonts/Union-Regular.ttf

PRODUCT_PACKAGES += \
    charger_res_images

# DU Utils library
PRODUCT_BOOT_JARS += \
    org.dirtyunicorns.utils

# DU Utils library
PRODUCT_PACKAGES += \
    org.dirtyunicorns.utils

# Storage manager
PRODUCT_GENERIC_PROPERTIES += \
    ro.storage_manager.enabled=true

# easy way to extend to add more packages
-include vendor/extra/product.mk

PRODUCT_PACKAGE_OVERLAYS += vendor/bootleggers/overlay/common

# Versioning System
# Bootleggers version over here.
PRODUCT_VERSION_MAJOR = Oreo
PRODUCT_VERSION_MINOR = EverybodyShutUp
PRODUCT_VERSION_MAINTENANCE = 2.3-Stable
BOOTLEG_SONGCODEURL = http://bit.ly/2McsqUb
BOOTLEG_POSTFIX := -$(shell date +"%Y%m%d")

ifndef BOOTLEG_BUILD_TYPE
    BOOTLEG_BUILD_TYPE := Unshishufied
endif

ifeq ($(BOOTLEG_MINIMAL_BUILD), true)
    BOOTLEG_BUILD_TYPE := MinimalShishu
endif


ifdef BOOTLEG_BUILD_EXTRA
    BOOTLEG_POSTFIX := -$(BOOTLEG_BUILD_EXTRA)
    BOOTLEG_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD)-$(BOOTLEG_BUILD_TYPE)$(BOOTLEG_POSTFIX)
else
    BOOTLEG_MOD_SHORT := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD)-$(BOOTLEG_BUILD_TYPE)
endif

# Set all versions
BOOTLEG_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD).$(PRODUCT_VERSION_MAINTENANCE)-$(BOOTLEG_BUILD_TYPE)$(BOOTLEG_POSTFIX)
BOOTLEG_MOD_VERSION := BootleggersROM-$(PRODUCT_VERSION_MAJOR)4$(BOOTLEG_BUILD).$(PRODUCT_VERSION_MAINTENANCE)-$(BOOTLEG_BUILD_TYPE)$(BOOTLEG_POSTFIX)

PRODUCT_GENERIC_PROPERTIES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    bootleg.ota.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR).$(PRODUCT_VERSION_MAINTENANCE) \
    ro.bootleg.version=$(BOOTLEG_VERSION) \
    ro.modversion=$(BOOTLEG_MOD_VERSION) \
    ro.bootleg.buildshort=$(BOOTLEG_MOD_SHORT) \
    ro.bootleg.buildtype=$(BOOTLEG_BUILD_TYPE) \
    ro.bootleg.songcodename=$(PRODUCT_VERSION_MINOR) \
    ro.bootleg.songcodeurl=$(BOOTLEG_SONGCODEURL) \
    ro.bootleg.display.version=$(BOOTLEG_VERSION)

# Google sounds
include vendor/bootleggers/google/GoogleAudio.mk

EXTENDED_POST_PROCESS_PROPS := vendor/bootleggers/tools/bootleg_process_props.py
