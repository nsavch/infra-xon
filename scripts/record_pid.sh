#!/bin/bash

pid=$$
pidfile=$1
shift
echo $@

echo $pid > $pidfile
exec $@
