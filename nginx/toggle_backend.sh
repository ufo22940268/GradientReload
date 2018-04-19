#!/usr/bin/env bash

file=$1
echo $1

up_config="server backend1:3000;"
down_config="server backend1:3000 down;"
grep "$up_config" $file
if [ $? -eq 0 ] ; then
  sed -i "" "s/$up_config/$down_config/" $file
else
  sed -i "" "s/$down_config/$up_config/" $file
fi

cat $file
