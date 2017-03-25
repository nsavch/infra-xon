#!/bin/sh

set -x
DL_DIR=/var/www/html/maps

for dirname in '/home/xonotic/.xonotic /home/xonotic/infra/servers'
do
find $dirname -name '*.pk3' -exec ln -sf {} $DL_DIR \;
done

find $DL_DIR -xtype l -exec rm {} \;
