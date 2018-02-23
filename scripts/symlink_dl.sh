#!/bin/sh

DL_DIR=/var/www/html/maps

for dirname in '/home/xonotic/infra/xonotic /home/xonotic/xonotic/data/'
do
find $dirname -name '*.pk3' -exec ln -sf {} $DL_DIR \;
done

find $DL_DIR -xtype l -exec rm {} \;
