#!/bin/bash
# Deploy website/ to production via FTP
set -e

HOST="ngcobalt375.manitu.net"
USER="ftp200039763"
LOCAL="website/"
REMOTE="/"

# Rebuild outputs first
echo "Building..."
bash manuscript/build-reader.sh
bash manuscript/build.sh 2>&1 | tail -1

# Copy PDF into website/ for deployment
cp manuscript/Checkpoint-Draft.pdf website/Checkpoint-Draft.pdf

echo "Deploying to $HOST..."
lftp -e "
  set ssl:verify-certificate no;
  set ftp:ssl-allow yes;
  open -u $USER $HOST;
  mirror --reverse --delete --only-newer --verbose --exclude .DS_Store --exclude-glob '*.mp3' $LOCAL $REMOTE;
  quit
"

echo "Done."
