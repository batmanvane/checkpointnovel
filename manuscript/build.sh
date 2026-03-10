#!/bin/bash
# Build Checkpoint manuscript PDF from markdown chapters
set -e

OUTDIR="$(dirname "$0")"
OUTFILE="$OUTDIR/Checkpoint-Draft.pdf"

# Git version info
GIT_SHORT=$(git -C "$OUTDIR" rev-parse --short HEAD 2>/dev/null || echo "unknown")
GIT_DATE=$(git -C "$OUTDIR" log -1 --format=%ci 2>/dev/null | cut -d' ' -f1 || echo "unknown")
VERSION="Draft — ${GIT_DATE} · ${GIT_SHORT}"

# Generate cover SVG and convert to PDF
COVER_SVG="$OUTDIR/cover.svg"
COVER_PDF="/tmp/checkpoint-cover.pdf"
if [ -f "$OUTDIR/generate-cover.py" ]; then
  python3 "$OUTDIR/generate-cover.py" > /dev/null 2>&1
fi
if [ -f "$COVER_SVG" ] && command -v rsvg-convert &> /dev/null; then
  rsvg-convert -f pdf "$COVER_SVG" -o "$COVER_PDF"
  echo "Cover: $COVER_PDF"
fi

# Concatenate all chapters in order with page breaks between them
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
  "$OUTDIR/backcover.md"
)

> /tmp/checkpoint-combined.md
for i in "${!CHAPTERS[@]}"; do
  if [ "$i" -gt 0 ]; then
    printf '\n\n\\newpage\n\n' >> /tmp/checkpoint-combined.md
  fi
  cat "${CHAPTERS[$i]}" >> /tmp/checkpoint-combined.md
done

pandoc /tmp/checkpoint-combined.md \
  -o "$OUTFILE" \
  --pdf-engine=xelatex \
  -V title="Checkpoint" \
  -V subtitle="A Novel" \
  -V author="R.F." \
  -V date="$VERSION" \
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

# Prepend cover page if available
if [ -f "$COVER_PDF" ]; then
  BODY_PDF="/tmp/checkpoint-body.pdf"
  mv "$OUTFILE" "$BODY_PDF"
  # Use pdftk or gs to merge cover + body
  if command -v pdftk &> /dev/null; then
    pdftk "$COVER_PDF" "$BODY_PDF" cat output "$OUTFILE"
  elif command -v gs &> /dev/null; then
    gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="$OUTFILE" "$COVER_PDF" "$BODY_PDF"
  else
    # Fallback: skip cover merge
    mv "$BODY_PDF" "$OUTFILE"
    echo "Warning: No PDF merge tool (pdftk/gs). Cover not included."
  fi
  rm -f "$BODY_PDF" "$COVER_PDF"
fi

echo "Built: $OUTFILE"
