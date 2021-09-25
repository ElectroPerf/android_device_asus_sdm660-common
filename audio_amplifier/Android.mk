#
# Copyright (C) 2022 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := \
    libbase \
    liblog \
    libcutils \
    libtinyalsa \
    libtinycompress \
    libaudioroute \
    libdl \
    libaudioutils \
    libhwbinder \
    libhidlbase \
    libprocessgroup \
    libutils \
    audio.primary.sdm660

LOCAL_C_INCLUDES += \
    external/tinyalsa/include \
    external/tinycompress/include \
    hardware/libhardware/include \
    system/media/audio_utils/include \
    $(call include-path-for, audio-effects) \
    $(call include-path-for, audio-route) \
    $(call project-path-for,qcom-audio)/hal \
    $(call project-path-for,qcom-audio)/hal/msm8974 \
    $(call project-path-for,qcom-audio)/hal/audio_extn \
    $(call project-path-for,qcom-audio)/hal/voice_extn

LOCAL_HEADER_LIBRARIES := generated_kernel_headers
LOCAL_SRC_FILES := audio_amplifier.c
LOCAL_MODULE := audio_amplifier.sdm660
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
