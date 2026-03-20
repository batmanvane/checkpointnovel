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

# Build EPUB
bash manuscript/build-epub.sh 2>&1 | tail -1

# Copy outputs into website/ for deployment
mkdir -p website/assets
cp manuscript/Checkpoint-Draft.pdf website/assets/Checkpoint-Draft.pdf
cp manuscript/Checkpoint.epub website/assets/Checkpoint.epub

echo "Deploying to $HOST..."
lftp -e "
  set ssl:verify-certificate no;
  set ftp:ssl-allow yes;
  open -u $USER $HOST;
  mirror --reverse --delete --only-newer --verbose --exclude .DS_Store --exclude-glob '*.mp3' $LOCAL $REMOTE;
  quit
"

echo "Done."
