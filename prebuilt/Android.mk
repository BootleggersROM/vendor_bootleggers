# Copyright (C) 2017 Ground Zero Roms
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

#
# Prebuilt APKs
#
#Gallery app

include $(CLEAR_VARS)
LOCAL_MODULE := CameraRoll
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Gallery Gallery2 SnapdragonGallery VanillaGallery
include $(BUILD_PREBUILT)


#Music App

include $(CLEAR_VARS)
LOCAL_MODULE := RetroMusic
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Music SnapdragonMusic crDroidMusic Phonograph Eleven VanillaMusic
include $(BUILD_PREBUILT)

#FileManager App

include $(CLEAR_VARS)
LOCAL_MODULE := MiXplorerPrebuilt
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := CMFileManager Amaze AmazeFM crDroidFileManager
include $(BUILD_PREBUILT)

#Browser App

include $(CLEAR_VARS)
LOCAL_MODULE := ViaPrebuilt
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Browser Browser2 Jelly ViaBrowser Chromium Quark Quarks Bolt
include $(BUILD_PREBUILT)

#Launcher App

include $(CLEAR_VARS)
LOCAL_MODULE := LawnchairStable
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Launcher2 Launcher3 Trebuchet PixelLauncher VLauncher NovaLauncher Luna Nova
include $(BUILD_PREBUILT)

#Launcher App - Companion app

include $(CLEAR_VARS)
LOCAL_MODULE := LawnchairFeed
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := NovaGoogleCompanion
include $(BUILD_PREBUILT)

#ShishuWalls, my photo wallpaper app

include $(CLEAR_VARS)
LOCAL_MODULE := ShishuWalls
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MagiskManager
LOCAL_MODULE_OWNER := bootleg
LOCAL_SRC_FILES := common/app/$(LOCAL_MODULE).apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := Turbo
LOCAL_SRC_FILES := $(LOCAL_MODULE)/$(LOCAL_MODULE).apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)
