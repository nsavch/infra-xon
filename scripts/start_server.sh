#!/bin/sh

source ./config.sh

cd ${SERVER_DIR}/$1
exec ./xonotic-linux64-dedicated -sessionid $1
