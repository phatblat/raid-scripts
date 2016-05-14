#!/bin/bash -ex

#
# rsync-imac-thunderbay.sh
# Syncs files from iMac to external ThunderBay.
#

source=/Users/phatblat/
destination=/Volumes/ThunderBay/Users/phatblat/

echo "rsyncing ${source} -> ${destination}"
mkdir -p "${destination}"

# Test (-anv)
# rsync --archive --verbose --dry-run "${source}" "${destination}"

# Run (-aP)
rsync --archive --partial --progress "${source}" "${destination}"
