# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit Qualcomm prebuilt libraries
# $(call inherit-product-if-exists, vendor/qcom/qcom-vendor-blobs.mk)

# usb profiles
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/init.msm8660.usb.rc:root/init.msm8660.usb.rc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# bootanimation
#PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip

# boot sound
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/etc/init.local.rc:system/etc/init.local.rc \
    device/htc/msm8660-common/prebuilt/media/android_audio.mp3:system/media/android_audio.mp3 \
    device/htc/msm8660-common/prebuilt/bin/bootsound:system/bin/bootsound

PRODUCT_PACKAGE_OVERLAYS += device/htc/msm8660-common/overlay

# QCOM Display
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8660 \
    audio.primary.msm8660 \
    libaudioutils

# QCOM Camera
# PRODUCT_PACKAGES += \
#     camera.msm8660

# QCOM OMX
PRODUCT_PACKAGES += \
     libstagefrighthw \
     libOmxCore \
     libmm-omxcore \
     libdivxdrmdecrypt \
     libOmxVenc \
     libOmxVdec \
     mm-vdec-omx-test \
     mm-video-driver-test \
     mm-venc-omx-test720p \
     mm-video-encdrv-test \
     libI420colorconvert

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# 8660 Common Firmware
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/etc/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    device/htc/msm8660-common/prebuilt/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/msm8660-common/prebuilt/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    device/htc/msm8660-common/prebuilt/vendor/firmware/fw_bcm4329_p2p.bin:system/vendor/firmware/fw_bcm4329_p2p.bin \
    device/htc/msm8660-common/prebuilt/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin

# Common Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/htc/msm8660-common/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/htc/msm8660-common/prebuilt/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
