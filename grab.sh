#!/bin/bash
/usr/sbin/lighttpd -D -f /lighttpd.conf &
url=$URL
ffmpeg -loglevel panic -y -i $url -vframes 1 -q:v 1 /tmp/www/snapshot.jpg
