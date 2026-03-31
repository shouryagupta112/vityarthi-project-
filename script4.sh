#!/bin/bash
# Script 4: Log File Analyzer

echo "===================================="
echo " Log File Analyzer"
echo " Student: Shourya Gupta"
echo "===================================="

LOGFILE=$1
KEYWORD=$2

# If keyword not given, default = error
if [ -z "$KEYWORD" ]
then
    KEYWORD="error"
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]
then
    echo "Error: File not found ❌"
    exit 1
fi

COUNT=0

# Read file line by line
while read LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT+1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword: $KEYWORD"
echo "File: $LOGFILE"
echo "Occurrences found: $COUNT"
