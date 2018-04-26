#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/libra/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := full_libra
PRODUCT_DEVICE := libra

PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi-4c
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="Xiaomi/libra/libra:7.0/NRD90M/V9.5.2.0.NXKCNFA:user/release-keys" \
	PRIVATE_BUILD_DESC="libra-user 7.0 NRD90M V9.5.2.0.NXKCNFA release-keys"
