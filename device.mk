#
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

# Inherit b2-specific vendor tree
$(call inherit-product-if-exists, vendor/htc/b2wlj/b2wlj-vendor.mk)

# Inherit from msm8974-common
$(call inherit-product, device/htc/msm8974-common/msm8974-common.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/b2wlj/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    device/htc/b2wlj/configs/com.htc.software.market.xml:system/etc/permissions/com.htc.software.market.xml

# IRDA
PRODUCT_BOOT_JARS += \
    htcirlibs

# NFC
PRODUCT_PACKAGES += \
    NfcNci \
    nfc_nci.pn54x.default


$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
$(call inherit-product-if-exists, vendor/htc/b2wlj/b2wlj-vendor.mk)


# Recovery
PRODUCT_PACKAGES += \
    chargeled \
    init.recovery.qcom.rc \
    offmode_charging_res_images \
    dt.img \
    texfat.ko
# Time Zone data
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
# Hardware Keymaster
PRODUCT_PACKAGES += \
    cmnlib.b00 \
    cmnlib.b01 \
    cmnlib.b02 \
    cmnlib.b03 \
    cmnlib.mdt \
    keymaster.b00 \
    keymaster.b01 \
    keymaster.b02 \
    keymaster.b03 \
    keymaster.mdt \
    keystore.msm8974.so \
    libQSEEComAPI.so
