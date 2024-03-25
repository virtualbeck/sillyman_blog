#!/bin/bash

# build and publish
hugo

if [ $? -eq 0 ] 
then 
  echo "Successfully built site, deploying.."
  #commit
  git add -A
  git commit -m "$(date) commit to main"
  git push
else 
  echo "build failed.." >&2 
  exit 0
fi