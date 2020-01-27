#
# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Display
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.power.rc \
    init.qcom.rc \
    init_wlan_bt.sh \
    init.qcom.usb.rc \
    ueventd.qcom.rc

PRODUCT_PACKAGES += \
    init.qcom.bt.sh

# Permissions
PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

# Camera
PRODUCT_PACKAGES += \
    camera.msm8974 \
    Snap

# Data
PRODUCT_PACKAGES += \
    librmnetctl \
    rmnetcli

# Doze
PRODUCT_PACKAGES += \
    OneplusDoze

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    memtrack.msm8974 \
    liboverlay \
    libtinyxml

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/xtwifi.conf:system/etc/xtwifi.conf

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/synaptics-rmi.kl:system/usr/keylayout/synaptics-rmi.kl

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

# Power
PRODUCT_PACKAGES += \
    power.msm8974

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libxml2

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf

PRODUCT_PACKAGES += \
    libshims_sensors

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf \
    wpa_supplicant_overlay.conf \
    p2p_supplicant_overlay.conf \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny

PRODUCT_PACKAGES += \
    wcnss_service


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/halium/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/halium/usr/lib/lxc-android-config/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/halium/usr/lib/lxc-android-config/70-onyx.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/halium/etc/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/halium/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/config.xml:system/halium/usr/share/powerd/device_configs/config-onyx.xml \
    $(LOCAL_PATH)/ubuntu/adbd.conf:system/halium/etc/init/adbd.conf \
    $(LOCAL_PATH)/ubuntu/adbd.conf:system/halium/etc/init/android-tools-adb.conf \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/onyx.conf \
    $(LOCAL_PATH)/ubuntu/tri_state.py:system/halium/usr/share/tri_state_switch/tri_state.py \
    $(LOCAL_PATH)/ubuntu/bluetooth-touch-onyx.conf:system/halium/etc/init/bluetooth-touch-onyx.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/halium/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/anbox-tool:system/halium/usr/bin/anbox-tool \
    $(LOCAL_PATH)/ubuntu/environment:system/halium/etc/environment \
    $(LOCAL_PATH)/ubuntu/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/base:system/halium/etc/apparmor.d/abstractions/base


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/ubuntu/lib/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/ubuntu/usr/lib/lxc-android-config/70-android.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/ubuntu/usr/lib/lxc-android-config/70-onyx.rules \
    $(LOCAL_PATH)/ubuntu/70-onyx.rules:system/ubuntu/etc/udev/rules.d/70-android.rules \
    $(LOCAL_PATH)/ubuntu/ofono.override:system/ubuntu/etc/init/ofono.override \
    $(LOCAL_PATH)/ubuntu/config.xml:system/ubuntu/usr/share/powerd/device_configs/config-default.xml \
    $(LOCAL_PATH)/ubuntu/config.xml:system/ubuntu/usr/share/powerd/device_configs/config-onyx.xml \
    $(LOCAL_PATH)/ubuntu/adbd.conf:system/ubuntu/etc/init/adbd.conf \
    $(LOCAL_PATH)/ubuntu/adbd.conf:system/ubuntu/etc/init/android-tools-adb.conf \
    $(LOCAL_PATH)/ubuntu/android.conf:system/ubuntu/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/android.conf:system/ubuntu/etc/ubuntu-touch-session.d/onyx.conf \
    $(LOCAL_PATH)/ubuntu/tri_state.py:system/ubuntu/usr/share/tri_state_switch/tri_state.py \
    $(LOCAL_PATH)/ubuntu/bluetooth-touch-onyx.conf:system/ubuntu/etc/init/bluetooth-touch-onyx.conf \
    $(LOCAL_PATH)/ubuntu/touch.pa:system/ubuntu/etc/pulse/touch.pa \
    $(LOCAL_PATH)/ubuntu/anbox-tool:system/ubuntu/usr/bin/anbox-tool \
    $(LOCAL_PATH)/ubuntu/environment:system/ubuntu/etc/environment \
    $(LOCAL_PATH)/ubuntu/usr.bin.media-hub-server:system/ubuntu/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/base:system/ubuntu/etc/apparmor.d/abstractions/base

# UBPorts
PRODUCT_PACKAGES += \
     libubuntu_application_api \
     direct_ubuntu_application_sensors_c_api_for_hybris_test \
     direct_ubuntu_application_sensors_for_hybris_test \
     direct_ubuntu_application_gps_c_api_for_hybris_test \
     libcamera_compat_layer \
     libmedia_compat_layer_32 \
     libaudioflingerglue \
     libdroidmedia \
     libminisf

# for off charging mode
PRODUCT_PACKAGES += \
    charger_res_images




# Inherit from oppo-common
$(call inherit-product, device/oppo/common/common.mk)
