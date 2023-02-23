LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

#模块名称（其他模块使用，比如说jar包，so库之类的）
LOCAL_MODULE := aosp-sandro-java-lib

#什么版本下编译，选项有user/debug/test/optional
#optional,在任何版本下都编译
LOCAL_MODULE_TAGS := optional

#混淆规则文件，如果不想混淆，可以使用变量LOCAL_PROGUARD_ENABLED := disable
LOCAL_PROGUARD_FLAG_FILES := proguard.flags

#源码地址
LOCAL_SRC_FILES := $(call all-java-files-under,src)
include $(BUILD_STATIC_JAVA_LIBRARY)
