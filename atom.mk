LOCAL_PATH := $(call my-dir)

################################################################################
# gz-math
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-math
LOCAL_DESCRIPTION := Math classes and functions for robot applications.

LOCAL_LIBRARIES := \
	swig \
	eigen \
	gz-cmake \
	gz-utils

LOCAL_CMAKE_CONFIGURE_ARGS := -DBUILD_TESTING:BOOL=False

LOCAL_CMAKE_CONFIGURE_ENV +=\
	PKG_CONFIG_PATH=$(TARGET_OUT_STAGING)/usr/lib/pkgconfig:$(TARGET_OUT_STAGING)/usr/share/pkgconfig


LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/math9

LOCAL_EXPORT_LDLIBS := -lgz-math

LOCAL_CXXFLAGS := -std=c++17

include $(BUILD_CMAKE)

