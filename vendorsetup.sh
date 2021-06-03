# Device Settings
rm -rf packages/resources/devicesettings
git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git -b lineage-18.1 packages/resources/devicesettings

# Commonsys-INTF Display
rm -rf vendor/qcom/opensource/commonsys-intf/display
git clone https://github.com/ElectroPerf/android_vendor_qcom_opensource_commonsys-intf_display.git -b rippa vendor/qcom/opensource/commonsys-intf/display

# HALS
rm -rf vendor/qcom/opensource/audio-hal/primary-hal hardware/qcom/media hardware/qcom/display
git clone https://github.com/AOSP-11/hardware_qcom-caf_audio_msm8998.git vendor/qcom/opensource/audio-hal/primary-hal
git clone https://github.com/AOSP-11/hardware_qcom-caf_media_msm8998 hardware/qcom/media
git clone https://github.com/AOSP-11/hardware_qcom-caf_display_msm8998 hardware/qcom/display

#Legacy-UM
git clone https://github.com/LineageOS/android_device_qcom_sepolicy.git -b lineage-18.1-legacy-um device/qcom/sepolicy-legacy-um

# Eva GCC
git clone --depth=1 https://github.com/mvaisakh/gcc-arm64.git prebuilts/gcc/linux-x86/aarch64/aarch64-elf
git clone --depth=1 https://github.com/mvaisakh/gcc-arm.git prebuilts/gcc/linux-x86/arm/arm-eabi
