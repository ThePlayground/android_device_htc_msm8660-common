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

# inherit from common msm8660 Recovery
-include device/htc/8660-recovery/BoardConfigCommon.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/msm8660-common/include

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_HAVE_TSLIB := false

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_EXTRA_CFLAGS += $(call cc-option,-march=armv7-a -mtune=cortex-a8)

ARCH_ARM_HAVE_VFP := true
USE_MALLOC_ALIGNMENT := 16

# Merged Wifi Defines
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcm4329.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcm4329_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/vendor/firmware/fw_bcm4329_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_MODULE_NAME          := bcmdhd
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/bcmdhd.ko"

ARD_NEEDS_CUTILS_LOG := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_AUDIO_SPEECH := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_EGL_CFG := vendor/qcom/system/lib/egl/egl.cfg

BOARD_USES_ADRENO_200 := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_USE_QCOM_PMEM := true
BOARD_EGL_GRALLOC_USAGE_FILTER := true

# Workaround for shooter broken overlay scaling
BOARD_OVERLAY_MINIFICATION_LIMIT := 2

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DSCREEN_RELEASE -DREFRESH_RATE=60
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_GRALLOC_USES_ASHMEM := true

DYNAMIC_SHARED_LIBV8SO := true

BOARD_OVERLAY_FORMAT_YCbCr_420_SP := true

BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
