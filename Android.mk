# Copyright 2005 The Android Open Source Project

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	yaffs2/utils/mkyaffs2image.c \
	yaffs2/yaffs_packedtags2.c \
	yaffs2/yaffs_ecc.c \
	yaffs2/yaffs_tagsvalidity.c

LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline

LOCAL_C_INCLUDES += $(LOCAL_PATH)/yaffs2

LOCAL_MODULE := mkyaffs2image

include $(BUILD_HOST_EXECUTABLE)

$(call dist-for-goals,droid,$(LOCAL_BUILT_MODULE))


include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	yaffs2/utils/mkyaffs2image.c \
	yaffs2/yaffs_packedtags2.c \
	yaffs2/yaffs_ecc.c \
	yaffs2/yaffs_tagsvalidity.c

LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400

LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libc libcutils
LOCAL_C_INCLUDES += $(LOCAL_PATH)/yaffs2
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
LOCAL_MODULE_STEM := mkyaffs2image
ADDITIONAL_RECOVERY_EXECUTABLES += recovery_mkyaffs2image

LOCAL_MODULE := recovery_mkyaffs2image

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	yaffs2/utils/mkyaffs2image.c \
	yaffs2/yaffs_packedtags2.c \
	yaffs2/yaffs_ecc.c \
	yaffs2/yaffs_tagsvalidity.c

LOCAL_CFLAGS =   -O2 -Wall -DCONFIG_YAFFS_UTIL -DCONFIG_YAFFS_DOES_ECC
LOCAL_CFLAGS+=   -Wshadow -Wpointer-arith -Wwrite-strings -Wstrict-prototypes -Wmissing-declarations
LOCAL_CFLAGS+=   -Wmissing-prototypes -Wredundant-decls -Wnested-externs -Winline
LOCAL_CFLAGS+=   -DS_IWRITE=0200 -DS_IREAD=0400

LOCAL_C_INCLUDES += $(LOCAL_PATH)/yaffs2

LOCAL_MODULE := mkyaffs2image

include $(BUILD_EXECUTABLE)
