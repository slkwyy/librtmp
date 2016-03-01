LOCAL_PATH := $(call my-dir)

subdirs := $(addprefix $(LOCAL_PATH)/,$(addsuffix /Android.mk, \
		librtmp \
	))

SSL := ../../../openssl/android/OpenSSL-for-Android/
ifndef SSL
$(error "You must define SSL before starting")
endif

include $(subdirs)
