#!/bin/bash

base_dir=`dirname $0`

cp base_dir/systemd/* /etc/systemd/system
systemctl daemon-reload
