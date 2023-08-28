#!/bin/sh
wg-quick up wg0
ssh-keygen -A
exec /usr/sbin/sshd -e "$@"
