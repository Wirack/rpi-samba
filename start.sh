#!/bin/bash
docker run -d \
  --name samba \
  -p 137:137/udp \
  -p 138:138/udp \
  -p 139:139 \
  -p 445:445 \
  -p 445:445/udp \
  --restart always \
  --hostname 'black-pearl' \
  -v /media:/share/stick \
  dastrasmue/rpi-samba:v3 \
  -s "share_rw:/share/stick:rw:"
