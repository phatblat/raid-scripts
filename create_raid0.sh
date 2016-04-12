#!/bin/bash -ex

#
# create_raid0.sh
# Creates a RAID 0 array using four disks.
#

# Create stripe of the 4x drives (RAID 0)
diskutil appleRAID create stripe RAID0Set JHFS+ disk3 disk4 disk6 disk7
