#!/bin/zsh

echo "Adding all files to git"
git add -A

echo "Enter commit message:"
read commit_msg

echo "Committing changes with message: ${commit_msg}"
git commit -m "${commit_msg}"

echo "Pushing changes to main branch"
git push origin main
