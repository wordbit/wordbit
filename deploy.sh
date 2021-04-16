#!/bin/bash

# Exit immediately on error.
set -e

echo -e "\033[0;32mDeploying updates to Github...\033[0m"

# Clean rebuild the production website.
rm -rf ./public/
hugo

# Add changes to git.
git add --all

# Commit changes.
msg="Rebuild website."
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
git subtree push --prefix public origin gh-pages
