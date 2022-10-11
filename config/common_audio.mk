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
    $(ALARM_PATH)/DreamDelyrium.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/DreamDelyrium.ogg \
    $(ALARM_PATH)/EarlyLandscapes.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/EarlyLandscapes.ogg \
    $(ALARM_PATH)/MissingTheCalm.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/MissingTheCalm.ogg \
    $(ALARM_PATH)/Nightfire.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/Nightfire.ogg

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Audiobrick.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Audiobrick.ogg \
    $(NOTIFICATION_PATH)/Auroran.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Auroran.ogg \
    $(NOTIFICATION_PATH)/Beepbeep.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Beepbeep.ogg \
    $(NOTIFICATION_PATH)/Bloomline.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Bloomline.ogg \
    $(NOTIFICATION_PATH)/Boreal.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Boreal.ogg \
    $(NOTIFICATION_PATH)/Cerenlindrum.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Cerenlindrum.ogg \
    $(NOTIFICATION_PATH)/Cerezio.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Cerezio.ogg \
    $(NOTIFICATION_PATH)/CyanMail.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/CyanMail.ogg \
    $(NOTIFICATION_PATH)/CyanMessage.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/CyanMessage.ogg \
    $(NOTIFICATION_PATH)/Deserted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Deserted.ogg \
    $(NOTIFICATION_PATH)/Dropdown.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Dropdown.ogg \
    $(NOTIFICATION_PATH)/Equilibrio.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Equilibrio.ogg \
    $(NOTIFICATION_PATH)/Newlife.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Newlife.ogg \
    $(NOTIFICATION_PATH)/Phloreau.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Phloreau.ogg \
    $(NOTIFICATION_PATH)/Shaded.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Shaded.ogg \
    $(NOTIFICATION_PATH)/Zooming.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/Zooming.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Caraway.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Caraway.ogg \
    $(RINGTONE_PATH)/EOTIRingtone.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/EOTIRingtone.ogg \
    $(RINGTONE_PATH)/Frost.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Frost.ogg \
    $(RINGTONE_PATH)/Missingnissim.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Missingnissim.ogg \
    $(RINGTONE_PATH)/Myst.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/Myst.ogg \
    $(RINGTONE_PATH)/TripLost.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/TripLost.ogg
    
    
# Default notification/alarm sounds
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.notification_sound=Equilibrio.ogg \
    ro.config.alarm_alert=MissingTheCalm.ogg \
    ro.config.ringtone=Frost.ogg
