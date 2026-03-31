#!/bin/bash
# Script 3: Disk and Permission Auditor

echo "===================================="
echo " Disk and Permission Audit Report"
echo " Student: Shourya Gupta"
echo "===================================="

# Directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo ""

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        GROUP=$(ls -ld $DIR | awk '{print $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory: $DIR"
        echo "Permissions: $PERMS"
        echo "Owner: $OWNER"
        echo "Group: $GROUP"
        echo "Size: $SIZE"
        echo "------------------------------------"
    else
        echo "Directory $DIR does not exist ❌"
    fi
done
