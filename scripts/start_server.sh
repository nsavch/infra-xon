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

echo $$ > $pidfile

rm -f $stdin_pipe
mkfifo $stdin_pipe

cd $server_dir
exec tail -f $stdin_pipe | ./xonotic-linux64-dedicated +set serverconfig server.$1.cfg -sessionid $1 
