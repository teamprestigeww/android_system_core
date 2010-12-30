# Copyright 2006 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= logcat.cpp event.logtags

LOCAL_SHARED_LIBRARIES := liblog

LOCAL_MODULE:= logcat

include $(BUILD_EXECUTABLE)

# make a static executable
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= logcat.cpp event.logtags

LOCAL_STATIC_LIBRARIES := liblog libstdc++ libc

LOCAL_MODULE := utility_logcat
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_STEM := logcat

LOCAL_FORCE_STATIC_EXECUTABLE := true

include $(BUILD_EXECUTABLE)

