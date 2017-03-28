#!/bin/bash

pid=$$
pidfile=$1
shift
echo $@

echo $$ > $pidfile
exec $@
