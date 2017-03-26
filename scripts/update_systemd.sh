#!/bin/bash

base_dir=`dirname $0`

cp $base_dir/../systemd/xonotic-all.target /etc/systemd/system
cp $base_dir/../systemd/xonotic@.service /etc/systemd/system
cp $base_dir/../systemd/tmpfiles.conf /etc/tmpfiles.d/xonotic.conf
systemctl daemon-reload
