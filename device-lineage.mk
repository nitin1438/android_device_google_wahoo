# Configstore
PRODUCT_PACKAGES += \
    disable_configstore

# Elmyra
PRODUCT_PACKAGES += \
    ElmyraService

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fastbootd.available=true

# ViPER4AndroidFX
$(call inherit-product, packages/apps/ViPER4AndroidFX/config.mk)

# GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_minimal.mk
WITH_GMS_COMMS_SUITE := false
endif

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/wahoo/overlay-lineage
