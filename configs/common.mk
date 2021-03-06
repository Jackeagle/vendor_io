# Brand
PRODUCT_BRAND ?= infinitiveOS

# Local path for prebuilts
LOCAL_PATH:= vendor/io/prebuilts/common

# Common build prop overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.android.dataroaming=false \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    keyguard.no_require_sim=true \
    ro.facelock.black_timeout=400 \
    ro.facelock.det_timeout=1500 \
    ro.facelock.rec_timeout=2500 \
    ro.facelock.lively_timeout=2500 \
    ro.facelock.est_max_time=600 \
    ro.facelock.use_intro_anim=false

# Proprietary latinime lib needed for swiping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Blobs for media effects
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# World APN list
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/etc/apns-conf.xml:system/etc/apns-conf.xml

# Bootanimation 
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation.zip:system/media/bootanimation.zip

# Additional Packages
-include vendor/io/configs/io_packages.mk

# InfinitiveOS Versioning
-include vendor/io/configs/versions.mk

# Common overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/io/overlays/common

# Backuptool support
PRODUCT_COPY_FILES += \
    vendor/io/prebuilts/addon.d/50-infinitive.sh:system/addon.d/50-infinitive.sh \
    vendor/io/prebuilts/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/io/prebuilts/bin/backuptool.sh:system/bin/backuptool.sh
