#!/bin/sh

DL_DIR=/var/www/html/maps

for dirname in '/home/xonotic/infra/xonotic'
do
find $dirname -name '*.pk3' -exec ln -sf {} $DL_DIR \;
find $dirname -name '*.dat' -exec ln -sf {} $DL_DIR \;
done

find $DL_DIR -xtype l -exec rm {} \;
