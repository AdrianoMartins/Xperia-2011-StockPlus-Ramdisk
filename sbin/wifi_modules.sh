#!/sbin/sh

# starting
echo "[ START ]" >> /data/local/tmp/log_adriano-modules.log

/sbin/busybox mount -o remount,rw /system
/sbin/busybox mkdir -p /system/lib/modules
/sbin/busybox cp /res/lib/modules/* /system/lib/modules
/sbin/busybox chmod 4777 /system/lib/modules/*
/sbin/busybox depmod

# DONE
echo "[ DONE ]" >> /data/local/tmp/log_adriano-mods.log
