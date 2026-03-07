#!/bin/bash
# Build Checkpoint manuscript PDF from markdown chapters
set -e

OUTDIR="$(dirname "$0")"
OUTFILE="$OUTDIR/Checkpoint-Draft.pdf"

# Concatenate all chapters in order with page breaks
cat \
  "$OUTDIR/chapters/ch00-prolog.md" \
  "$OUTDIR/chapters/ch01-henning.md" \
  "$OUTDIR/chapters/ch02-maya.md" \
  "$OUTDIR/chapters/ch03-linwei.md" \
  "$OUTDIR/chapters/ch04-amara.md" \
  "$OUTDIR/chapters/ch05-henning.md" \
  "$OUTDIR/chapters/ch06-maya.md" \
  "$OUTDIR/chapters/ch07-linwei.md" \
  "$OUTDIR/chapters/ch08-amara.md" \
  "$OUTDIR/chapters/ch09-henning.md" \
  "$OUTDIR/chapters/ch10-maya.md" \
  "$OUTDIR/chapters/ch11-linwei.md" \
  "$OUTDIR/chapters/ch12-amara.md" \
  "$OUTDIR/chapters/ch13-linwei.md" \
  "$OUTDIR/chapters/ch14-maya.md" \
  "$OUTDIR/chapters/ch15-henning.md" \
  "$OUTDIR/chapters/ch16-amara.md" \
  "$OUTDIR/chapters/ch17-couple.md" \
  "$OUTDIR/chapters/ch18-ensemble.md" \
  "$OUTDIR/chapters/ch19-linwei.md" \
  "$OUTDIR/chapters/ch20-ensemble.md" \
  "$OUTDIR/chapters/ch21-maya.md" \
  "$OUTDIR/chapters/ch22-henning.md" \
  "$OUTDIR/chapters/ch23-ensemble.md" \
  "$OUTDIR/chapters/ch24-couple.md" \
  "$OUTDIR/chapters/ch25-amara.md" \
  "$OUTDIR/chapters/ch26-linwei.md" \
  "$OUTDIR/chapters/ch27-couple.md" \
  "$OUTDIR/chapters/ch28-henning.md" \
  "$OUTDIR/chapters/ch29-epilog.md" \
  "$OUTDIR/credits.md" \
  > /tmp/checkpoint-combined.md

pandoc /tmp/checkpoint-combined.md \
  -o "$OUTFILE" \
  --pdf-engine=xelatex \
  -V title="Checkpoint" \
  -V subtitle="A Novel" \
  -V author="R.F." \
  -V date="Draft — March 2026" \
  -V documentclass=book \
  -V classoption=openany \
  -V geometry=margin=1in \
  -V fontsize=11pt \
  -V linestretch=1.5 \
  -V pagestyle=plain \
  -V mainfont="Georgia" \
  -V header-includes='\usepackage{microtype}' \
  --top-level-division=chapter \
  --toc

rm /tmp/checkpoint-combined.md
echo "Built: $OUTFILE"
