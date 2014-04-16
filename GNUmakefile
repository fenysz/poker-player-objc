include ${GNUSTEP_MAKEFILES}/common.make

TOOL_NAME = player
player_OBJCFLAGS = -fobjc-arc
player_OBJC_FILES = main.m 
player_OBJC_FILES += $(shell find ./Classes -type f -name '*.m'|sed ':a;N;$!ba;s/\n/ /g')

include ${GNUSTEP_MAKEFILES}/tool.make
