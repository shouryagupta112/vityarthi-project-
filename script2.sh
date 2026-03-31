#!/bin/bash
# Script 2: Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "---------------------------"

# Check if package is installed
if dpkg -l | grep -q "^ii  $PACKAGE"
then
    echo "$PACKAGE is installed ✅"
    
    # Show version
    VERSION=$(git --version)
    echo "Version: $VERSION"

    # Show maintainer info
    echo "Package details:"
    dpkg -s $PACKAGE | grep -E 'Maintainer|Architecture'

else
    echo "$PACKAGE is NOT installed ❌"
fi

echo "---------------------------"

# Case statement explanation
case $PACKAGE in
 git)
    echo "Description: Git is a distributed version control system created by Linus Torvalds."
    ;;
 firefox)
    echo "Description: Firefox is an open-source web browser."
    ;;
 vlc)
    echo "Description: VLC is a multimedia player."
    ;;
 apache2)
    echo "Description: Apache is a web server."
    ;;
 *)
    echo "Description: Unknown package."
    ;;
esac
