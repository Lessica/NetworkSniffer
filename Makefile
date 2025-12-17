export PACKAGE_VERSION := 1.0-2
export GO_EASY_ON_ME := 1

TARGET := iphone:clang:16.5:14.0
ARCHS := arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME := NetworkSniffer

NetworkSniffer_FILES += NetworkSniffer.xm
NetworkSniffer_FILES += NSProtocol.m

NetworkSniffer_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += NetworkSnifferPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk
