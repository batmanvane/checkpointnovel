#!/bin/bash
# Convert markdown chapters to ElevenLabs-friendly plain text
set -e

OUTDIR="$(dirname "$0")/audiobook"
SRCDIR="$(dirname "$0")/chapters"

mkdir -p "$OUTDIR"

CHAPTERS=(
  ch00-prolog
  ch01-henning
  ch02-maya
  ch03-linwei
  ch04-amara
  ch05-henning
  ch06-maya
  ch07-linwei
  ch08-amara
  ch09-henning
  ch10-maya
  ch11-linwei
  ch12-amara
  ch13-linwei
  ch14-maya
  ch15-henning
  ch16-amara
  ch17-couple
  ch18-ensemble
  ch19-linwei
  ch20-ensemble
  ch21-maya
  ch22-henning
  ch23-ensemble
  ch24-couple
  ch25-amara
  ch26-linwei
  ch27-couple
  ch28-henning
  ch29-epilog
)

for ch in "${CHAPTERS[@]}"; do
  SRC="$SRCDIR/${ch}.md"
  OUT="$OUTDIR/${ch}.txt"

  sed -E \
    -e 's/^# [0-9]+\. (.+)/Chapter: \1/g' \
    -e 's/^# (.+)/\1/g' \
    -e 's/\*\*\*([^*]+)\*\*\*/\1/g' \
    -e 's/\*\*([^*]+)\*\*/\1/g' \
    -e 's/\*([^*]+)\*/\1/g' \
    -e 's/^---$/\n...\n/g' \
    -e 's/\$\\rightarrow\$/leads to/g' \
    -e 's/~\$10\^\{-17\}\$/ten to the power of negative seventeen/g' \
    -e 's/6CO₂ \+ 6H₂O/six C-O-2 plus six H-2-O/g' \
    -e 's/C₆H₁₂O₆ \+ 6O₂/C-6-H-12-O-6 plus six O-2/g' \
    -e 's/^\$ git (.+)/Git command: git \1/g' \
    -e '/^```/d' \
    -e '/^\|-- /d' \
    -e '/^\\-- /d' \
    -e '/^\.\.\.$/!{ /^[[:space:]]*\/[a-z]/d; }' \
    -e 's/&mdash;/—/g' \
    -e 's/&hellip;/.../g' \
    -e 's/SHA-256/SHA 256/g' \
    -e 's/\.nii\.gz/.nii.gz/g' \
    "$SRC" \
    | sed -E \
      -e '/^[[:space:]]*$/{ N; /^\n[[:space:]]*$/d; }' \
      -e '/^subject_[0-9]/d' \
      -e '/^manifest\./d' \
    > "$OUT"

  echo "  $OUT"
done

# Also generate a single combined file for full-book upload
COMBINED="$OUTDIR/Checkpoint-Full.txt"
> "$COMBINED"
# Prepend title page
if [ -f "$OUTDIR/ch-title.txt" ]; then
  cat "$OUTDIR/ch-title.txt" >> "$COMBINED"
  printf '\n\n...\n\n' >> "$COMBINED"
fi
for ch in "${CHAPTERS[@]}"; do
  if [ -f "$OUTDIR/${ch}.txt" ]; then
    cat "$OUTDIR/${ch}.txt" >> "$COMBINED"
    printf '\n\n...\n\n' >> "$COMBINED"
  fi
done
echo "  $COMBINED"

echo "Done. ${#CHAPTERS[@]} chapters + 1 combined file in $OUTDIR/"
echo ""
echo "ElevenLabs tips:"
echo "  - Upload individual chapter files for per-chapter voice control"
echo "  - '...' marks scene break pauses"
echo "  - Code blocks, file listings, and directory trees stripped"
echo "  - Chemical formulas and LaTeX replaced with spoken equivalents"
echo "  - Git commands prefixed with 'Git command:'"
echo "  - Markdown formatting (bold/italic) removed"
