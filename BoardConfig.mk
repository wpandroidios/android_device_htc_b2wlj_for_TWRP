# Copyright (C) 2014 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Model Ids
# 0PAG10000 - KDDI
# 0PAG20000 - International

TARGET_OTA_ASSERT_DEVICE := b2,b2wlj,htc_b2wlj,b2ul

# For Japan device
JPN_FELICA_DEVICE := true

# Inherit from common msm8974-common
-include device/htc/msm8974-common/BoardConfigCommon.mk

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/htc/b2wlj/mkbootimg.mk
TARGET_KERNEL_CONFIG := cm_b2wlj_defconfig

# Assertions
TARGET_BOARD_INFO_FILE ?= device/htc/b2wlj/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/b2wlj/bluetooth

# Includes
TARGET_SPECIFIC_HEADER_PATH := device/htc/b2wlj/include

# NFC
BOARD_NFC_HAL_SUFFIX := msm8974

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2818572288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1476395008

# SELinux
BOARD_SEPOLICY_DIRS += device/htc/b2wlj/sepolicy

BOARD_SEPOLICY_UNION += \
    cir_fw_update.te \
    file_contexts \
    system_app.te

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_b2wlj
TARGET_LIBINIT_DEFINES_FILE := device/htc/b2wlj/init/init_b2wlj.c

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/b2wlj/releasetools

