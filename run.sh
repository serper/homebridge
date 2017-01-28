#!/bin/bash

sed -i "s/rlimit-nproc=3/#rlimit-nproc=3/" /etc/avahi/avahi-daemon.conf

cd /root/.homebridge
file="/root/.homebridge/install.sh"
if [ -f "$file" ]
then
	echo "$file found. Executing..."
	/bin/bash $file
fi

dbus-daemon --system
avahi-daemon -D

service dbus start
service avahi-daemon start

homebridge
