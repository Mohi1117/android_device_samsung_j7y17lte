LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := init_j7y17lte.cpp
LOCAL_C_INCLUDES := system/core/init
LOCAL_MODULE := libinit_j7y17lte
LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
