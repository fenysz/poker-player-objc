include ${GNUSTEP_MAKEFILES}/common.make

TOOL_NAME = player
player_OBJC_FILES = $(shell find . -type f -name '*.m'|sed ':a;N;$!ba;s/\n/ /g')

include ${GNUSTEP_MAKEFILES}/tool.make
