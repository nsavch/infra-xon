#!/bin/sh

base_dir=`dirname $0`
source $base_dir/config.sh

cd $base_dir/servers/$1
exec ./xonotic-linux64-dedicated -sessionid $1
