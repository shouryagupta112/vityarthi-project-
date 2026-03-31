#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "===================================="
echo " Open Source Manifesto Generator"
echo " Student: Shourya Gupta"
echo "===================================="

# Taking input from user
read -p "Enter an open source tool you use: " TOOL
read -p "What does freedom mean to you: " FREEDOM
read -p "What would you like to build in future: " BUILD

DATE=$(date)
FILE="manifesto.txt"

# Writing to file
echo "On $DATE, I believe open source tools like $TOOL represent $FREEDOM. In the future, I want to build $BUILD and share it freely with the world." > $FILE

echo ""
echo "✅ Manifesto saved in $FILE"
echo ""
echo "----- Your Manifesto -----"
cat $FILE
