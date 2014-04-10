#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

BUILDTOOL="make"
IS_OSX=`uname -a|grep Darwin`

if [ IS_OSX ]; then
    BUILDTOOL="xcodebuild"
fi

${BUILDTOOL} clean
${BUILDTOOL}

if [ IS_OSX ]; then
    rm -rf obj
    cp -R build/Release obj
    chmod a+x obj/player
fi

python player_service.py &

echo $! > python.pid
