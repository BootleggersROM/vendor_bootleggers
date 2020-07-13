#
# BootleggersROM Audio Files
# based on CyanogenMod old one
#

ALARM_PATH := vendor/bootleggers/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/bootleggers/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/bootleggers/prebuilt/common/media/audio/ringtones

# Include some more AOSP sounds
include vendor/bootleggers/config/common_aosp_media.mk

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/BeyondTheDream.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/BeyondTheDream.ogg \
    $(ALARM_PATH)/LikeWhat.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/LikeWhat.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Auroran.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Auroran.ogg \
    $(NOTIFICATION_PATH)/CyanMail.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/CyanMail.ogg \
    $(NOTIFICATION_PATH)/CyanMessage.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/CyanMessage.ogg \
    $(NOTIFICATION_PATH)/Phloreau.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Phloreau.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Caraway.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Caraway.ogg \
    $(RINGTONE_PATH)/Frost.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Frost.ogg \
    $(RINGTONE_PATH)/Myst.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Myst.ogg
    
    
# Default notification/alarm sounds
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.config.notification_sound=Electra.ogg \
    ro.config.alarm_alert=LikeWhat.ogg \
    ro.config.ringtone=Frost.ogg