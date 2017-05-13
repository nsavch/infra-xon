#!/bin/bash

set -x
base_dir=`dirname $0`
tmpdir=/var/run/xonotic
server_dir=$base_dir/../servers/$1
pidfile=$tmpdir/$1.pid
stdin_pipe=$tmpdir/$1.fifo
xonotic_dir=/home/xonotic/xonotic
xonotic_cmd="${xonotic_dir}/darkplaces/darkplaces-dedicated -xonotic -userdir ${base_dir}/../xonotic"

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

rm -f $stdin_pipe
mkfifo $stdin_pipe

cd ${xonotic_dir}
exec tail -f $stdin_pipe | $base_dir/record_pid.sh $pidfile $xonotic_cmd -game data_$1 +set serverconfig server.$1.cfg -sessionid $1 
