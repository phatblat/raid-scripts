#!/bin/bash -ex

#
# create_raid10.sh
# Creates a RAID 1+0 (aka RAID 10) array using four disks.
#

# Create 2x mirrored sets (RAID 1)
diskutil appleRAID create mirror Mirror1 JHFS+ disk3 disk5
diskutil appleRAID create mirror Mirror2 JHFS+ disk6 disk7

# Create stripe of the mirrored sets (RAID 0)
diskutil appleRAID create stripe ThunderBay JHFS+ Mirror1 Mirror2
