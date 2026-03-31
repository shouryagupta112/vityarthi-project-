#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Shourya Gupta"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)

echo "==============================="
echo "Open Source Audit Project"
echo "Student: $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "==============================="

echo "Kernel Version: $KERNEL"
echo "Current User: $USER_NAME"
echo "System Uptime: $UPTIME"
echo "Current Date: $DATE"
echo "Linux License: GPL v2"
