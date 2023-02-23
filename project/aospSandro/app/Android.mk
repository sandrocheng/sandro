LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#编译出来的名称(apk使用)
LOCAL_PACKAGE_NAME := AospLogDemo

#依赖的jar静态包
LOCAL_STATIC_JAVA_LIBRARIES := aosp-sandro-java-lib

#什么版本下编译，选项有user/debug/test/optional
#optional,在任何版本下都编译
LOCAL_MODULE_TAGS := optional

#混淆规则文件，如果不想混淆，可以使用变量LOCAL_PROGUARD_ENABLED := disable
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

#源码地址
LOCAL_SRC_FILES := $(call all-java-files-under,src)

#资源文件
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/src/main/res
#清单文件
LOCAL_MANIFEST_FILE := src/main/AndroidManifest.xml

#android12 通过设置这个变量，通只系统忽略隐藏的类，否则编译会失败
LOCAL_PRIVATE_PLATFORM_APIS := true

include $(BUILD_PACKAGE)
include $(call all-makefiles-under, $(LOCAL_PATH))