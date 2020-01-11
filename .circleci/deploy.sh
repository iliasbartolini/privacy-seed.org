#!/bin/sh

echo "Install AWS cli"
sudo apt-get install pip3 --yes                                                           
pip3 install awscli --upgrade --user                                                           

echo "Sync new files"
aws s3 sync _site s3://privacy-seed.org/ --delete
