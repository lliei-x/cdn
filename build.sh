#!/bin/bash
set -e

# Add changes to git.
git add -A

# Commit changes.
msg="update `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin main