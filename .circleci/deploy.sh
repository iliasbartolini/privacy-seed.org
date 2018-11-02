!#!/bin/sh

echo "Add remote ssh key fingerprints"
ssh-keyscan privacy-seed.org >> ~/.ssh/known_hosts

echo "Install rsync"
sudo apt-get install rsync --yes

echo "Sync new files"
rsync -avi --delete-after -e "ssh" _site/* $PS_USER@privacy-seed.org:$PS_DEPLOY_PATH