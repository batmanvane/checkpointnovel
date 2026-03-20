#!/bin/bash
# Build Checkpoint EPUB from markdown chapters
set -e

OUTDIR="$(dirname "$0")"
OUTFILE="$OUTDIR/Checkpoint.epub"

# Git version info
GIT_SHORT=$(git -C "$OUTDIR" rev-parse --short HEAD 2>/dev/null || echo "unknown")
GIT_DATE=$(git -C "$OUTDIR" log -1 --format=%ci 2>/dev/null | cut -d' ' -f1 || echo "unknown")

# Cover image
COVER_SVG="$OUTDIR/cover.svg"
COVER_PNG="/tmp/checkpoint-cover.png"
COVER_OPT=""
if [ -f "$COVER_SVG" ] && command -v rsvg-convert &> /dev/null; then
  rsvg-convert -w 1600 -h 2400 "$COVER_SVG" -o "$COVER_PNG"
  COVER_OPT="--epub-cover-image=$COVER_PNG"
fi

# Concatenate all chapters with EPUB-friendly breaks
CHAPTERS=(
  "$OUTDIR/chapters/ch00-prolog.md"
  "$OUTDIR/chapters/ch01-henning.md"
  "$OUTDIR/chapters/ch02-maya.md"
  "$OUTDIR/chapters/ch03-linwei.md"
  "$OUTDIR/chapters/ch04-amara.md"
  "$OUTDIR/chapters/ch05-henning.md"
  "$OUTDIR/chapters/ch06-maya.md"
  "$OUTDIR/chapters/ch07-linwei.md"
  "$OUTDIR/chapters/ch08-amara.md"
  "$OUTDIR/chapters/ch09-henning.md"
  "$OUTDIR/chapters/ch10-maya.md"
  "$OUTDIR/chapters/ch11-linwei.md"
  "$OUTDIR/chapters/ch12-amara.md"
  "$OUTDIR/chapters/ch13-linwei.md"
  "$OUTDIR/chapters/ch14-maya.md"
  "$OUTDIR/chapters/ch15-henning.md"
  "$OUTDIR/chapters/ch16-amara.md"
  "$OUTDIR/chapters/ch17-couple.md"
  "$OUTDIR/chapters/ch18-ensemble.md"
  "$OUTDIR/chapters/ch19-linwei.md"
  "$OUTDIR/chapters/ch20-ensemble.md"
  "$OUTDIR/chapters/ch21-maya.md"
  "$OUTDIR/chapters/ch22-henning.md"
  "$OUTDIR/chapters/ch23-ensemble.md"
  "$OUTDIR/chapters/ch24-couple.md"
  "$OUTDIR/chapters/ch25-amara.md"
  "$OUTDIR/chapters/ch26-linwei.md"
  "$OUTDIR/chapters/ch27-couple.md"
  "$OUTDIR/chapters/ch28-henning.md"
  "$OUTDIR/chapters/ch29-epilog.md"
  "$OUTDIR/credits.md"
)

> /tmp/checkpoint-epub.md
for i in "${!CHAPTERS[@]}"; do
  if [ "$i" -gt 0 ]; then
    printf '\n\n' >> /tmp/checkpoint-epub.md
  fi
  cat "${CHAPTERS[$i]}" >> /tmp/checkpoint-epub.md
done

pandoc /tmp/checkpoint-epub.md \
  -o "$OUTFILE" \
  --metadata title="Checkpoint" \
  --metadata author="R.F." \
  --metadata date="$GIT_DATE" \
  --metadata lang="en" \
  --metadata description="2041. A brain-computer interface adopted by 900 million people reads the brain — and writes to it. Four lives at the edges of what it means to think for yourself." \
  --metadata rights="CC BY-NC-SA 4.0" \
  --top-level-division=chapter \
  --toc \
  --toc-depth=1 \
  --split-level=1 \
  $COVER_OPT

rm -f /tmp/checkpoint-epub.md /tmp/checkpoint-cover.png

echo "Built: $OUTFILE"
