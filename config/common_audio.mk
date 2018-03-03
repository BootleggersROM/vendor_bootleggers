#
# BootleggersROM Audio Files
# based on CyanogenMod old one
#

ALARM_PATH := vendor/bootleggers/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/bootleggers/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/bootleggers/prebuilt/common/media/audio/ringtones

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/BeyondTheDream.ogg:system/media/audio/alarms/BeyondTheDream.ogg \
    $(ALARM_PATH)/LikeWhat.ogg:system/media/audio/alarms/LikeWhat.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Auroran.ogg:system/media/audio/notifications/Auroran.ogg \
    $(NOTIFICATION_PATH)/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
    $(NOTIFICATION_PATH)/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    $(NOTIFICATION_PATH)/Phloreau.ogg:system/media/audio/notifications/Phloreau.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Caraway.ogg:system/media/audio/ringtones/Caraway.ogg \
    $(RINGTONE_PATH)/Frost.ogg:system/media/audio/ringtones/Frost.ogg \
    $(RINGTONE_PATH)/Myst.ogg:system/media/audio/ringtones/Myst.ogg
    
    
# Default notification/alarm sounds
PRODUCT_GENERIC_PROPERTIES += \
    ro.config.notification_sound=Electra.ogg \
    ro.config.alarm_alert=LikeWhat.ogg \
    ro.config.ringtone=Frost.ogg