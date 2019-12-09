LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,F:/下载管理\搜狗高速下载/cocos2dx317/cocos2dx317/cocos2d-x-3.17/)
$(call import-add-path,F:/下载管理\搜狗高速下载/cocos2dx317/cocos2dx317/cocos2d-x-3.17/external)
$(call import-add-path,F:/下载管理\搜狗高速下载/cocos2dx317/cocos2dx317/cocos2d-x-3.17/cocos)
#$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
#$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
#$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_STATIC_LIBRARIES := cocos2dx_static

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
