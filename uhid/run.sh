#!/bin/sh

insmod /mnt/onboard/.adds/koreader/plugins/bluetooth.koplugin/uhid.ko
lsmod | grep "uhid"