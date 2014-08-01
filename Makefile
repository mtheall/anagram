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
TARGET        := anagram
BUILD         := build
SOURCES       := source
DATA          := data
INCLUDES      := include

CONF_DEFINES  =
CONF_USERLIBS = feos3d
CONF_LIBDIRS  =
CONF_LIBS     = -lfeos3d
CONF_CXXFLAGS = -DDICT_FILE="\"/data/anagram/dict.z\""
MANIFEST      = $(TARGET).manifest

include $(FEOSMK)/app.mk

install: all
	@cp $(TARGET).fx2 $(FEOSDEST)/data/FeOS/bin/$(TARGET).fx2 || exit 1
	@[ -d $(FEOSDEST)/data/$(TARGET) ] || mkdir -p $(FEOSDEST)/data/$(TARGET) || exit 1
	@cp bin/dict.z $(FEOSDEST)/data/$(TARGET)/dict.z || exit 1
	@grit icon.png -ftr -fh! -gb -gB16 -gT7FFE -gzl -p! -o $(FEOSDEST)/data/FeOS/gui/$(TARGET).grf
	@fmantool $(MANIFEST) $(FEOSDEST)/data/FeOS/gui/$(TARGET).app
