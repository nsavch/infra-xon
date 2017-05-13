#!/bin/bash

base_dir=`dirname $0`
tmpdir=/var/run/xonotic
server_dir=$base_dir/../servers/$1
pidfile=$tmpdir/$1.pid
stdin_pipe=$tmpdir/$1.fifo

if [ -z $1 ]
then
echo Sever name must be specified
exit 1
fi


if [ ! -d $server_dir ]
then
echo Server $1 does not exist
exit 2
fi

$base_dir/symlink_dl.sh

echo 'rescan_pending 1' > /var/run/xonotic/$1.fifo
# kill -HUP `cat /var/run/xonotic/$1.pid`
