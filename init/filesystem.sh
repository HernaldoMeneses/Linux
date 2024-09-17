#The Filesystem Hierarchy Standard
/bin/ 	# basic programs
/boot/ 	# Kali Linux Kernel and other files required for its early boot process
/dev/ 	# device files
/etc/ 	# configuration files
/home/ 	# User's personal files
/lib/ 	# basic libraries
/media/ # mount point for removable devices (CD-ROM, USB keys, and so on)
/mnt/ 	# temporary mount point
/opt/ 	# extra applications provided by third parties
/root/  # administrator's (root's) personal files
/run/ 	# volatile runtime data that does not persist across reboots (not yet included in the FHS)
/sbin/ 	# system programs
/srv/ 	# data used by servers hosted on this system
/tmp/	# temporary files (this directory is oftin emptied at boot)
/usr/ 	# applications (this directoty is further subdivded int bin, sbin, lib according to the same logic as in the root directory)
/usr/share/ # contains architecture-independent data.
/usr/local/ # is meant to be used by the administrator for installing applications manually without overwriting files handled by the packaging system (dpkg)
/var/ 	# variable data handled by daemons. This inludes log files, queues, spools, and caches.

/proc/ and /sys/ # are specific to the Linux kernel (not part of the FHS)
