#!/bin/bash

# Change working directory to isoroot
cd isoroot

# Copy Kernel to isoroot
cp ../linux-5.0.7/arch/x86_64/boot/bzImage .

# Copy Isolinux to isoroot
cp ../syslinux-6.03/bios/core/isolinux.bin ./isolinux/isolinux.bin
cp ../syslinux-6.03/bios/com32/elflink/ldlinux/ldlinux.c32 ./isolinux/ldlinux.c32

# Exit from isoroot
cd ..

# Change working directory to initrdroot
cd initrdroot

# Make directories
mkdir -p bin dev lib/x86_64-linux-gnu lib64 proc sys user usr/local/share/nvim etc/scripts

# Make init executable
chmod +x init

# Make udhcpc script executable
chmod +x usr/share/udhcpc/default.script

# Copy Busybox to initrdroot
cp ../busybox-1.30.1/busybox ./bin/

# Copy Neovim to initrdroot
cp ../neovim/build/bin/nvim ./bin/
cp -r ../neovim/runtime/* ./usr/local/share/nvim/

# Copy shared dependencies to initrdroot
cp /lib64/ld-linux-x86-64.so.2 ./lib64/
cp /lib/x86_64-linux-gnu/librt.so.1 /lib/x86_64-linux-gnu/libpthread.so.0 /lib/x86_64-linux-gnu/libnsl.so.1 /lib/x86_64-linux-gnu/libdl.so.2 /lib/x86_64-linux-gnu/libutil.so.1 /lib/x86_64-linux-gnu/libgcc_s.so.1 /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libm.so.6 /lib/x86_64-linux-gnu/libresolv.so.2 ./lib/x86_64-linux-gnu/

# Generate Busybox links
cd bin
ln -s busybox acpid
ln -s busybox add-shell
ln -s busybox addgroup
ln -s busybox adduser
ln -s busybox adjtimex
ln -s busybox arch
ln -s busybox arp
ln -s busybox arping
ln -s busybox ash
ln -s busybox awk
ln -s busybox base64
ln -s busybox basename
ln -s busybox bc
ln -s busybox beep
ln -s busybox blkdiscard
ln -s busybox blkid
ln -s busybox blockdev
ln -s busybox bootchartd
ln -s busybox brctl
ln -s busybox bunzip2
ln -s busybox bzcat
ln -s busybox bzip2
ln -s busybox cal
ln -s busybox cat
ln -s busybox chat
ln -s busybox chattr
ln -s busybox chgrp
ln -s busybox chmod
ln -s busybox chown
ln -s busybox chpasswd
ln -s busybox chpst
ln -s busybox chroot
ln -s busybox chrt
ln -s busybox chvt
ln -s busybox cksum
ln -s busybox clear
ln -s busybox cmp
ln -s busybox comm
ln -s busybox conspy
ln -s busybox cp
ln -s busybox cpio
ln -s busybox crond
ln -s busybox crontab
ln -s busybox cryptpw
ln -s busybox cttyhack
ln -s busybox cut
ln -s busybox date
ln -s busybox dc
ln -s busybox dd
ln -s busybox deallocvt
ln -s busybox delgroup
ln -s busybox deluser
ln -s busybox depmod
ln -s busybox devmem
ln -s busybox df
ln -s busybox dhcprelay
ln -s busybox diff
ln -s busybox dirname
ln -s busybox dmesg
ln -s busybox dnsd
ln -s busybox dnsdomainname
ln -s busybox dos2unix
ln -s busybox dpkg
ln -s busybox dpkg-deb
ln -s busybox du
ln -s busybox dumpkmap
ln -s busybox dumpleases
ln -s busybox echo
ln -s busybox ed
ln -s busybox egrep
ln -s busybox eject
ln -s busybox env
ln -s busybox envdir
ln -s busybox envuidgid
ln -s busybox ether-wake
ln -s busybox expand
ln -s busybox expr
ln -s busybox factor
ln -s busybox fakeidentd
ln -s busybox fallocate
ln -s busybox false
ln -s busybox fatattr
ln -s busybox fbset
ln -s busybox fbsplash
ln -s busybox fdflush
ln -s busybox fdformat
ln -s busybox fdisk
ln -s busybox fgconsole
ln -s busybox fgrep
ln -s busybox find
ln -s busybox findfs
ln -s busybox flock
ln -s busybox fold
ln -s busybox free
ln -s busybox freeramdisk
ln -s busybox fsck
ln -s busybox fsck.minix
ln -s busybox fsfreeze
ln -s busybox fstrim
ln -s busybox fsync
ln -s busybox ftpd
ln -s busybox ftpget
ln -s busybox ftpput
ln -s busybox fuser
ln -s busybox getopt
ln -s busybox getty
ln -s busybox grep
ln -s busybox groups
ln -s busybox gunzip
ln -s busybox gzip
ln -s busybox halt
ln -s busybox hd
ln -s busybox hdparm
ln -s busybox head
ln -s busybox hexdump
ln -s busybox hexedit
ln -s busybox hostid
ln -s busybox hostname
ln -s busybox httpd
ln -s busybox hush
ln -s busybox hwclock
ln -s busybox i2cdetect
ln -s busybox i2cdump
ln -s busybox i2cget
ln -s busybox i2cset
ln -s busybox id
ln -s busybox ifconfig
ln -s busybox ifdown
ln -s busybox ifenslave
ln -s busybox ifplugd
ln -s busybox ifup
ln -s busybox inetd
ln -s busybox init
ln -s busybox insmod
ln -s busybox install
ln -s busybox ionice
ln -s busybox iostat
ln -s busybox ip
ln -s busybox ipaddr
ln -s busybox ipcalc
ln -s busybox ipcrm
ln -s busybox ipcs
ln -s busybox iplink
ln -s busybox ipneigh
ln -s busybox iproute
ln -s busybox iprule
ln -s busybox iptunnel
ln -s busybox kbd_mode
ln -s busybox kill
ln -s busybox killall
ln -s busybox killall5
ln -s busybox klogd
ln -s busybox last
ln -s busybox less
ln -s busybox link
ln -s busybox linux32
ln -s busybox linux64
ln -s busybox linuxrc
ln -s busybox ln
ln -s busybox loadfont
ln -s busybox loadkmap
ln -s busybox logger
ln -s busybox login
ln -s busybox logname
ln -s busybox logread
ln -s busybox losetup
ln -s busybox lpd
ln -s busybox lpq
ln -s busybox lpr
ln -s busybox ls
ln -s busybox lsattr
ln -s busybox lsmod
ln -s busybox lsof
ln -s busybox lspci
ln -s busybox lsscsi
ln -s busybox lsusb
ln -s busybox lzcat
ln -s busybox lzma
ln -s busybox lzop
ln -s busybox makedevs
ln -s busybox makemime
ln -s busybox man
ln -s busybox md5sum
ln -s busybox mdev
ln -s busybox mesg
ln -s busybox microcom
ln -s busybox mkdir
ln -s busybox mkdosfs
ln -s busybox mke2fs
ln -s busybox mkfifo
ln -s busybox mkfs.ext2
ln -s busybox mkfs.minix
ln -s busybox mkfs.vfat
ln -s busybox mknod
ln -s busybox mkpasswd
ln -s busybox mkswap
ln -s busybox mktemp
ln -s busybox modinfo
ln -s busybox modprobe
ln -s busybox more
ln -s busybox mount
ln -s busybox mountpoint
ln -s busybox mpstat
ln -s busybox mt
ln -s busybox mv
ln -s busybox nameif
ln -s busybox nanddump
ln -s busybox nandwrite
ln -s busybox nbd-client
ln -s busybox nc
ln -s busybox netstat
ln -s busybox nice
ln -s busybox nl
ln -s busybox nmeter
ln -s busybox nohup
ln -s busybox nologin
ln -s busybox nproc
ln -s busybox nsenter
ln -s busybox nslookup
ln -s busybox ntpd
ln -s busybox nuke
ln -s busybox od
ln -s busybox openvt
ln -s busybox partprobe
ln -s busybox passwd
ln -s busybox paste
ln -s busybox patch
ln -s busybox pgrep
ln -s busybox pidof
ln -s busybox ping
ln -s busybox ping6
ln -s busybox pipe_progress
ln -s busybox pivot_root
ln -s busybox pkill
ln -s busybox pmap
ln -s busybox popmaildir
ln -s busybox poweroff
ln -s busybox powertop
ln -s busybox printenv
ln -s busybox printf
ln -s busybox ps
ln -s busybox pscan
ln -s busybox pstree
ln -s busybox pwd
ln -s busybox pwdx
ln -s busybox raidautorun
ln -s busybox rdate
ln -s busybox rdev
ln -s busybox readahead
ln -s busybox readlink
ln -s busybox readprofile
ln -s busybox realpath
ln -s busybox reboot
ln -s busybox reformime
ln -s busybox remove-shell
ln -s busybox renice
ln -s busybox reset
ln -s busybox resize
ln -s busybox resume
ln -s busybox rev
ln -s busybox rm
ln -s busybox rmdir
ln -s busybox rmmod
ln -s busybox route
ln -s busybox rpm
ln -s busybox rpm2cpio
ln -s busybox rtcwake
ln -s busybox run-init
ln -s busybox run-parts
ln -s busybox runlevel
ln -s busybox runsv
ln -s busybox runsvdir
ln -s busybox rx
ln -s busybox script
ln -s busybox scriptreplay
ln -s busybox sed
ln -s busybox sendmail
ln -s busybox seq
ln -s busybox setarch
ln -s busybox setconsole
ln -s busybox setfattr
ln -s busybox setfont
ln -s busybox setkeycodes
ln -s busybox setlogcons
ln -s busybox setpriv
ln -s busybox setserial
ln -s busybox setsid
ln -s busybox setuidgid
ln -s busybox sh
ln -s busybox sha1sum
ln -s busybox sha256sum
ln -s busybox sha3sum
ln -s busybox sha512sum
ln -s busybox showkey
ln -s busybox shred
ln -s busybox shuf
ln -s busybox slattach
ln -s busybox sleep
ln -s busybox smemcap
ln -s busybox softlimit
ln -s busybox sort
ln -s busybox split
ln -s busybox ssl_client
ln -s busybox start-stop-daemon
ln -s busybox stat
ln -s busybox strings
ln -s busybox stty
ln -s busybox su
ln -s busybox sulogin
ln -s busybox sum
ln -s busybox sv
ln -s busybox svc
ln -s busybox svlogd
ln -s busybox svok
ln -s busybox swapoff
ln -s busybox swapon
ln -s busybox switch_root
ln -s busybox sync
ln -s busybox sysctl
ln -s busybox syslogd
ln -s busybox tac
ln -s busybox tail
ln -s busybox tar
ln -s busybox taskset
ln -s busybox tc
ln -s busybox tcpsvd
ln -s busybox tee
ln -s busybox telnet
ln -s busybox telnetd
ln -s busybox test
ln -s busybox tftp
ln -s busybox tftpd
ln -s busybox time
ln -s busybox timeout
ln -s busybox top
ln -s busybox touch
ln -s busybox tr
ln -s busybox traceroute
ln -s busybox traceroute6
ln -s busybox true
ln -s busybox truncate
ln -s busybox tty
ln -s busybox ttysize
ln -s busybox tunctl
ln -s busybox ubiattach
ln -s busybox ubidetach
ln -s busybox ubimkvol
ln -s busybox ubirename
ln -s busybox ubirmvol
ln -s busybox ubirsvol
ln -s busybox ubiupdatevol
ln -s busybox udhcpc
ln -s busybox udhcpd
ln -s busybox udpsvd
ln -s busybox uevent
ln -s busybox umount
ln -s busybox uname
ln -s busybox unexpand
ln -s busybox uniq
ln -s busybox unix2dos
ln -s busybox unlink
ln -s busybox unlzma
ln -s busybox unshare
ln -s busybox unxz
ln -s busybox unzip
ln -s busybox uptime
ln -s busybox users
ln -s busybox usleep
ln -s busybox uudecode
ln -s busybox uuencode
ln -s busybox vconfig
ln -s busybox vi
ln -s busybox vlock
ln -s busybox volname
ln -s busybox w
ln -s busybox wall
ln -s busybox watch
ln -s busybox watchdog
ln -s busybox wc
ln -s busybox wget
ln -s busybox which
ln -s busybox who
ln -s busybox whoami
ln -s busybox whois
ln -s busybox xargs
ln -s busybox xxd
ln -s busybox xz
ln -s busybox xzcat
ln -s busybox yes
ln -s busybox zcat
ln -s busybox zcip
cd ..

# Copy mbr.bin and extlinux binaries from syslinux
cp ../syslinux-6.03/bios/mbr/mbr.bin ./user/mbr.bin
cp ../syslinux-6.03/bios/extlinux/extlinux ./bin/extlinux

# Exit from initrdroot directory
cd ..

