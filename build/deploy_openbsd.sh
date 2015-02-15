#!/bin/sh

export BUILD_ROOT=$PWD

if [ -z $LITEIDE_DEPLOYMENT_ROOT ]; then
	export LITEIDE_DEPLOYMENT_ROOT=$PWD/liteide
fi

echo deploy liteide
echo LITEIDE_DEPLOYMENT_ROOT=$LITEIDE_DEPLOYMENT_ROOT 
echo .

echo Copying from $LITEIDE_DEPLOYMENT_ROOT/local/* to /usr/local
cp -rf $LITEIDE_DEPLOYMENT_ROOT/local/* /usr/local
