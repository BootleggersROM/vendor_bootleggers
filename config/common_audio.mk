#
# BootleggersROM Audio Files
# based on CyanogenMod old one
#

ALARM_PATH := vendor/bootleggers/prebuilt/common/media/audio/alarms
NOTIFICATION_PATH := vendor/bootleggers/prebuilt/common/media/audio/notifications
RINGTONE_PATH := vendor/bootleggers/prebuilt/common/media/audio/ringtones
GOOGLERINGS_PATH := vendor/bootleggers/prebuilt/google

# Alarms
PRODUCT_COPY_FILES += \
    $(ALARM_PATH)/BeyondTheDream.ogg:system/media/audio/alarms/BeyondTheDream.ogg \
    $(ALARM_PATH)/LikeWhat.ogg:system/media/audio/alarms/LikeWhat.ogg \
    $(GOOGLERINGS_PATH)/alarms/A_real_hoot.ogg:system/media/audio/alarms/A_real_hoot.ogg \
    $(GOOGLERINGS_PATH)/alarms/Bright_morning.ogg:system/media/audio/alarms/Bright_morning.ogg \
    $(GOOGLERINGS_PATH)/alarms/Cuckoo_clock.ogg:system/media/audio/alarms/Cuckoo_clock.ogg \
    $(GOOGLERINGS_PATH)/alarms/Early_twilight.ogg:system/media/audio/alarms/Early_twilight.ogg \
    $(GOOGLERINGS_PATH)/alarms/Full_of_wonder.ogg:system/media/audio/alarms/Full_of_wonder.ogg \
    $(GOOGLERINGS_PATH)/alarms/Gentle_breeze.ogg:system/media/audio/alarms/Gentle_breeze.ogg \
    $(GOOGLERINGS_PATH)/alarms/Icicles.ogg:system/media/audio/alarms/Icicles.ogg \
    $(GOOGLERINGS_PATH)/alarms/Jump_start.ogg:system/media/audio/alarms/Jump_start.ogg \
    $(GOOGLERINGS_PATH)/alarms/Loose_change.ogg:system/media/audio/alarms/Loose_change.ogg \
    $(GOOGLERINGS_PATH)/alarms/Rolling_fog.ogg:system/media/audio/alarms/Rolling_fog.ogg \
    $(GOOGLERINGS_PATH)/alarms/Spokes.ogg:system/media/audio/alarms/Spokes.ogg \
    $(GOOGLERINGS_PATH)/alarms/Sunshower.ogg:system/media/audio/alarms/Sunshower.ogg 
    

# Notifications
PRODUCT_COPY_FILES += \
    $(NOTIFICATION_PATH)/Auroran.ogg:system/media/audio/notifications/Auroran.ogg \
    $(NOTIFICATION_PATH)/CyanMail.ogg:system/media/audio/notifications/CyanMail.ogg \
    $(NOTIFICATION_PATH)/CyanMessage.ogg:system/media/audio/notifications/CyanMessage.ogg \
    $(NOTIFICATION_PATH)/Phloreau.ogg:system/media/audio/notifications/Phloreau.ogg \
    $(GOOGLERINGS_PATH)/notifications/Beginning.ogg:system/media/audio/notifications/Beginning.ogg \
    $(GOOGLERINGS_PATH)/notifications/Coconuts.ogg:system/media/audio/notifications/Coconuts.ogg \
    $(GOOGLERINGS_PATH)/notifications/Duet.ogg:system/media/audio/notifications/Duet.ogg \
    $(GOOGLERINGS_PATH)/notifications/End_note.ogg:system/media/audio/notifications/End_note.ogg \
    $(GOOGLERINGS_PATH)/notifications/Gentle_gong.ogg:system/media/audio/notifications/Gentle_gong.ogg \
    $(GOOGLERINGS_PATH)/notifications/Mallet.ogg:system/media/audio/notifications/Mallet.ogg \
    $(GOOGLERINGS_PATH)/notifications/Orders_up.ogg:system/media/audio/notifications/Orders_up.ogg \
    $(GOOGLERINGS_PATH)/notifications/Ping.ogg:system/media/audio/notifications/Ping.ogg \
    $(GOOGLERINGS_PATH)/notifications/Pipes.ogg:system/media/audio/notifications/Pipes.ogg \
    $(GOOGLERINGS_PATH)/notifications/Popcorn.ogg:system/media/audio/notifications/Popcorn.ogg \
    $(GOOGLERINGS_PATH)/notifications/Shopkeeper.ogg:system/media/audio/notifications/Shopkeeper.ogg \
    $(GOOGLERINGS_PATH)/notifications/Sticks_and_stones.ogg:system/media/audio/notifications/Sticks_and_stones.ogg \
    $(GOOGLERINGS_PATH)/notifications/Tuneup.ogg:system/media/audio/notifications/Tuneup.ogg \
    $(GOOGLERINGS_PATH)/notifications/Tweeter.ogg:system/media/audio/notifications/Tweeter.ogg \
    $(GOOGLERINGS_PATH)/notifications/Twinkle.ogg:system/media/audio/notifications/Twinkle.ogg 

# Ringtones
PRODUCT_COPY_FILES += \
    $(RINGTONE_PATH)/Caraway.ogg:system/media/audio/ringtones/Caraway.ogg \
    $(RINGTONE_PATH)/Frost.ogg:system/media/audio/ringtones/Frost.ogg \
    $(RINGTONE_PATH)/Myst.ogg:system/media/audio/ringtones/Myst.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Copycat.ogg:system/media/audio/ringtones/Copycat.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Crackle.ogg:system/media/audio/ringtones/Crackle.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Flutterby.ogg:system/media/audio/ringtones/Flutterby.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Hotline.ogg:system/media/audio/ringtones/Hotline.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Leaps_and_bounds.ogg:system/media/audio/ringtones/Leaps_and_bounds.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Lollipop.ogg:system/media/audio/ringtones/Lollipop.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Lost_and_found.ogg:system/media/audio/ringtones/Lost_and_found.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Mash_up.ogg:system/media/audio/ringtones/Mash_up.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Monkey_around.ogg:system/media/audio/ringtones/Monkey_around.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Schools_out.ogg:system/media/audio/ringtones/Schools_out.ogg \
    $(GOOGLERINGS_PATH)/ringtones/The_big_adventure.ogg:system/media/audio/ringtones/The_big_adventure.ogg \
    $(GOOGLERINGS_PATH)/ringtones/Zen_too.ogg:system/media/audio/ringtones/Zen_too.ogg
    
    
# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Electra.ogg \
    ro.config.alarm_alert=LikeWhat.ogg \
    ro.config.ringtone=Frost.ogg