# Copyright 2013 The Android Open Source Project
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

TARGET_QCOM_DISPLAY_VARIANT := legacy

#Board Settings
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_BOOTLOADER_BOARD_NAME := arthur
ARCH_ARM_HAVE_NEON := true

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WLAN_DEVICE := libra
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/libra.ko"
WIFI_DRIVER_MODULE_NAME := "libra"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"
WIFI_PRE_LOADER := "qcom_sdio_init"
WIFI_POST_UNLOADER := "qcom_sdio_deinit"
BOARD_WEXT_NO_COMBO_SCAN := true

#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom vmalloc=512M kgsl.ptcount=16
BOARD_KERNEL_CMDLINE := console=ttyMSM1,115200
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2908749824
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_MISC_PARTITION := true

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

# SD Card
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true

BOARD_VOLD_MAX_PARTITIONS :=30
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

TARGET_RECOVERY_GUI := true
DEVICE_RESOLUTION := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
BOARD_HAS_FLIPPED_SCREEN := true

# Mounts
TARGET_RECOVERY_FSTAB := device/zte/arthur/recovery.fstab
RECOVERY_FSTAB_VERSION := 2

# Recovery Script
USE_SET_METADATA := false
