#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# AID/fs configs
PRODUCT_PACKAGES += \
    fs_config_files

# ANT+
PRODUCT_PACKAGES += \
    com.dsi.ant@1.0.vendor

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicerec=true \
    ro.vendor.audio.sdk.fluencetype=fluence \
    vendor.audio.adm.buffering.ms=6 \
    vendor.audio_hal.period_multiplier=2 \
    vendor.audio.feature.compr_voip.enable=true

# Board Platform
TARGET_BOARD_PLATFORM := sdm660

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0.vendor \
    android.hardware.bluetooth@1.1.vendor \
    android.hardware.bluetooth.a2dp@1.0-impl \
    android.hardware.bluetooth.audio@2.1-impl \
    audio.bluetooth.default \
    com.qualcomm.qti.bluetooth_audio@1.0.vendor \
    libbluetooth_audio_session \
    vendor.qti.hardware.bluetooth_audio@2.1.vendor \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor \
    vendor.qti.hardware.fm@1.0.vendor

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.service.bdroid.sibs=false \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    persist.vendor.qcom.bluetooth.soc=cherokee \
    vendor.qcom.bluetooth.soc=cherokee

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    bt.max.hfpclient.connections=1 \
    persist.bluetooth.a2dp_offload.cap=sbc-aac-aptx-aptxhd-ldac \
    persist.bluetooth.a2dp_offload.disabled=false \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.vendor.qcom.bluetooth.enable.splita2dp=true \
    persist.vendor.qcom.bluetooth.a2dp_offload_cap=sbc-aptx-aptxhd-aac-ldac \
    ro.bluetooth.a2dp_offload.supported=true \
    ro.bluetooth.library_name=libbluetooth_qti.so \
    vendor.bluetooth.soc=cherokee

# Codec2 modules
PRODUCT_PACKAGES += \
    com.android.media.swcodec \
    libsfplugin_ccodec \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor

PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# Disable APEX compression
PRODUCT_COMPRESSED_APEX := false

# Input
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/keylayout/,$(TARGET_COPY_OUT_VENDOR)/usr/keylayout)

# IPC router config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl \
    mediametrics \
    libmediametrics \
    libregistermsext \
    libstagefright_enc_common \
    libavmediaserviceextensions

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/media/,$(TARGET_COPY_OUT_VENDOR)/etc)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vidc.enc.target_support_bframe=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.vidc.enc.disable.pq=true

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libmm-omxcore \
    libstagefrighthw \
    libc2dcolorconvert

# Overlay
PRODUCT_PACKAGES += \
    AsusSDM660Bluetooth \
    AsusSDM660Frameworks \
    AsusSDM660Settings

# Public Libraries
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# QTI Common Components
QTI_COMPONENTS += audio
QTI_COMPONENTS += bt
QTI_COMPONENTS += media-legacy
QTI_COMPONENTS += overlay
QTI_COMPONENTS += wlan
TARGET_COMMON_QTI_COMPONENTS += $(QTI_COMPONENTS)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# WLAN
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/configs/wlan/,$(TARGET_COPY_OUT_VENDOR)/etc/wifi)

# Inherit the proprietary files
$(call inherit-product, vendor/asus/sdm660-common/sdm660-common-vendor.mk)
