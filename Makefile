#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=<path to>devkitPro")
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=<path to>devkitARM")
endif

ifeq ($(strip $(FEOSSDK)),)
$(error "Please set FEOSSDK in your environment. export FEOSSDK=<path to>FeOS/sdk")
endif

FEOSMK = $(FEOSSDK)/mk

#---------------------------------------------------------------------------------
# TARGET is the name of the output
# BUILD is the directory where object files & intermediate files will be placed
# SOURCES is a list of directories containing source code
# DATA is a list of directories containing data files
# INCLUDES is a list of directories containing header files
#---------------------------------------------------------------------------------
TARGET        := $(notdir $(CURDIR))
BUILD         := build
SOURCES       := source
DATA          := data
INCLUDES      := include

CONF_DEFINES =
CONF_LIBDIRS =
CONF_LIBS =

include $(FEOSMK)/app.mk

ifneq ($(strip $(DEST)),)
install: all
	@cp $(TARGET).fx2 $(DEST)/data/FeOS/bin/$(TARGET).fx2 || exit 1
endif
