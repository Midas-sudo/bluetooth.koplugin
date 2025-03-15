#!/bin/bash
cd "$(dirname "$0")"

insmod /drivers/mx6sll-ntx/wifi/sdio_bt_pwr.ko
insmod ./uhid/uhid.ko
/sbin/rtk_hciattach -s 115200 ttymxc1 rtk_h5
dbus-send --system --dest=org.bluez --print-reply  /  org.freedesktop.DBus.ObjectManager.GetManagedObjects
hciconfig hci0 up
