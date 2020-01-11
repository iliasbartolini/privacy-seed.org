#!/bin/sh

echo "Add remote ssh key fingerprints"
sudo pip install awscli

echo "Sync new files"
aws s3 sync _site s3://privacy-seed.org/ --delete
