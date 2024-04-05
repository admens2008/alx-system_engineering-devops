#!/bin/bash

# Add all files
git add .

# Commit changes with a default message or with a message provided as an argument
if [ $# -eq 0 ]; then
    git commit -m "Automated commit"
else
    git commit -m "$1"
fi

# Push changes to the remote repository
git push

