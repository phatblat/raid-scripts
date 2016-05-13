#!/bin/bash -ex

#
# create_raid0.sh
# Creates a RAID 0 array using four disks.
#

# Create stripe of the 4x drives (RAID 0)
diskutil appleRAID create stripe ThunderBay JHFS+ disk3 disk5 disk6 disk7
