
LOCAL_PATH := $(call my-dir)

################################################################################
# ignition-math
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := ign-math
LOCAL_DESCRIPTION := Math classes and functions for robot applications.

LOCAL_LIBRARIES := ign-cmake

LOCAL_CMAKE_CONFIGURE_ARGS := -DBUILD_TESTING:BOOL=False

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/ignition/math6

LOCAL_EXPORT_LDLIBS := -lignition-math6

LOCAL_ARCHIVE_PATCHES = precision-specialisation.patch

include $(BUILD_CMAKE)

