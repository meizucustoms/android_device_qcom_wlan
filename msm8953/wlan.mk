WLAN_CHIPSET := pronto

#WPA
WPA := wpa_cli

PRODUCT_PACKAGES += $(WLAN_CHIPSET)_wlan.ko
PRODUCT_PACKAGES += \
        wificond \
        wifilogd \
        wifilearner
PRODUCT_PACKAGES += $(WPA)

PRODUCT_COPY_FILES += \
	device/qcom/wlan/msm8953/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
	device/qcom/wlan/msm8953/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
	device/qcom/wlan/msm8953/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf

# WLAN specific aosp flag
TARGET_USES_AOSP_FOR_WLAN := false
