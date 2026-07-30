#!/bin/bash

echo "========================================="
echo " Git Auto Push Script"
echo "========================================="

# Go to project folder
cd "$(dirname "$0")"

echo ""
echo "Current Branch:"
git branch --show-current

echo ""
echo "Git Status:"
git status

echo ""
echo "Adding all changes..."
git add .

echo ""
read -p "Enter Commit Message: " message

git commit -m "$message"

echo ""
echo "Pushing to GitHub..."

git push origin main

echo ""
echo "========================================="
echo "Push Completed Successfully"
echo "========================================="

read -p "Press Enter to Exit..."