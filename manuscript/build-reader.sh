#!/bin/bash
# Generate a single-page HTML reader from markdown chapters
set -e

SCRIPTDIR="$(cd "$(dirname "$0")" && pwd)"
SRCDIR="$SCRIPTDIR/chapters"
OUTDIR="$SCRIPTDIR/../website/read"

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

CHAPTER_TITLES=(
  "Prolog: The Needle"
  "1. The Workshop"
  "2. The Cluster"
  "3. The Architect"
  "4. The Garden"
  "5. The Stammtisch"
  "6. The Study"
  "7. The Chain"
  "8. The Measure"
  "9. The Malfunction"
  "10. The Lattice"
  "11. The Leak"
  "12. The Letters"
  "13. The Attractor"
  "14. The Connection"
  "15. The Records"
  "16. The Archive"
  "17. The Slow"
  "18. The Room"
  "19. The Backup"
  "20. The Wave"
  "21. The Map"
  "22. The Firewall"
  "23. The Branch"
  "24. The Wanting"
  "25. The Revaluation"
  "26. The Commit Message"
  "27. The Disagreement"
  "28. The Workshop"
  "Epilog: Author's Note"
)

OUT="$OUTDIR/index.html"

# --- Header ---
cat > "$OUT" << 'HEADER'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Checkpoint — Read Online</title>
<meta name="description" content="Read Checkpoint online — a hard sci-fi novel about what happens when BCI meets AI.">
<style>
  @font-face { font-family: 'JetBrains Mono'; font-style: normal; font-weight: 400; font-display: swap; src: url('../fonts/JetBrainsMono-Regular.woff2') format('woff2'); }
  @font-face { font-family: 'JetBrains Mono'; font-style: normal; font-weight: 700; font-display: swap; src: url('../fonts/JetBrainsMono-Bold.woff2') format('woff2'); }
  @font-face { font-family: 'JetBrains Mono'; font-style: italic; font-weight: 400; font-display: swap; src: url('../fonts/JetBrainsMono-Italic.woff2') format('woff2'); }

  :root {
    --bg: #1a1a2e;
    --surface: #16213e;
    --border: #2a2a4a;
    --text: #c4c4d4;
    --text-dim: #6a6a8a;
    --accent: #d4a574;
  }

  * { margin: 0; padding: 0; box-sizing: border-box; }
  html { scroll-behavior: smooth; }

  body {
    background: var(--bg);
    color: var(--text);
    font-family: 'JetBrains Mono', monospace;
    font-size: 14px;
    line-height: 1.9;
  }

  .reader {
    max-width: 680px;
    margin: 0 auto;
    padding: 40px 24px 80px;
  }

  .back { color: var(--text-dim); text-decoration: none; font-size: 12px; display: inline-block; margin-bottom: 32px; }
  .back:hover { color: var(--accent); }

  h1.book-title {
    color: var(--accent);
    font-size: 24px;
    margin-bottom: 4px;
  }
  .book-subtitle {
    color: var(--text-dim);
    font-size: 12px;
    margin-bottom: 40px;
  }

  /* Table of contents */
  .toc {
    border: 1px solid var(--border);
    padding: 20px 24px;
    margin-bottom: 60px;
  }
  .toc h2 {
    color: var(--accent);
    font-size: 14px;
    margin-bottom: 12px;
  }
  .toc a {
    color: var(--text);
    text-decoration: none;
    display: block;
    padding: 4px 0;
    font-size: 13px;
  }
  .toc a:hover { color: var(--accent); }
  .toc .toc-num { color: var(--text-dim); display: inline-block; min-width: 36px; }

  /* Chapters */
  .chapter {
    margin-bottom: 80px;
    padding-top: 40px;
  }

  .chapter h2 {
    color: var(--accent);
    font-size: 18px;
    margin-bottom: 24px;
    padding-bottom: 12px;
    border-bottom: 1px solid var(--border);
  }

  .chapter p {
    margin-bottom: 16px;
    text-align: left;
  }

  .chapter em { font-style: italic; }
  .chapter strong { font-weight: 700; color: var(--text); }

  .scene-break {
    text-align: center;
    color: var(--text-dim);
    margin: 32px 0;
    letter-spacing: 8px;
  }

  .chapter-top {
    text-align: right;
    margin-top: 32px;
  }
  .chapter-top a {
    color: var(--text-dim);
    text-decoration: none;
    font-size: 12px;
  }
  .chapter-top a:hover { color: var(--accent); }

  /* Code/git blocks */
  .ch-pre {
    background: var(--surface);
    border: 1px solid var(--border);
    padding: 16px;
    margin: 16px 0;
    font-size: 12px;
    overflow-x: auto;
    white-space: pre-wrap;
    color: var(--text-dim);
  }

  .note {
    margin-top: 60px;
    padding: 16px;
    border: 1px solid var(--border);
    font-size: 12px;
    color: var(--text-dim);
    line-height: 1.8;
  }
  .note a { color: var(--text-dim); }
</style>
</head>
<body>
<div class="reader">

<a href="../" class="back">&larr; checkpoin.de</a>

<h1 class="book-title">Checkpoint</h1>
<p class="book-subtitle">How we optimized into the void. &mdash; R.F. &amp; Claude</p>

<div class="toc">
<h2>Chapters</h2>
HEADER

# --- Table of contents ---
for i in "${!CHAPTERS[@]}"; do
  id="${CHAPTERS[$i]}"
  title="${CHAPTER_TITLES[$i]}"
  printf '<a href="#%s"><span class="toc-num">%02d</span> %s</a>\n' "$id" "$i" "$title" >> "$OUT"
done

cat >> "$OUT" << 'TOCEND'
</div>

TOCEND

# --- Chapter content ---
for i in "${!CHAPTERS[@]}"; do
  ch="${CHAPTERS[$i]}"
  title="${CHAPTER_TITLES[$i]}"
  src="$SRCDIR/${ch}.md"

  printf '<div class="chapter" id="%s">\n' "$ch" >> "$OUT"
  printf '<h2>%s</h2>\n' "$title" >> "$OUT"

  # Convert markdown to HTML paragraphs
  # Skip the first line (# heading)
  tail -n +2 "$src" | sed -E \
    -e '/^```/,/^```/{ s/^```.*//; /^$/d; s/.*/<div class="ch-pre">\0<\/div>/; }' \
    -e 's/\*\*\*([^*]+)\*\*\*/<strong><em>\1<\/em><\/strong>/g' \
    -e 's/\*\*([^*]+)\*\*/<strong>\1<\/strong>/g' \
    -e 's/\*([^*]+)\*/<em>\1<\/em>/g' \
    -e 's/&mdash;/\&mdash;/g' \
    -e 's/&hellip;/\&hellip;/g' \
    | awk '
    BEGIN { in_code=0; in_para=0 }
    /^<div class="ch-pre">/ { print; next }
    /^---$/ { if(in_para) { print "</p>"; in_para=0 }; print "<div class=\"scene-break\">***</div>"; next }
    /^$/ { if(in_para) { print "</p>"; in_para=0 }; next }
    /^[|]/ { next }  # skip tables
    {
      if(!in_para) { printf "<p>"; in_para=1 }
      else { printf " " }
      print
    }
    END { if(in_para) print "</p>" }
    ' >> "$OUT"

  printf '<div class="chapter-top"><a href="#%s">&uarr; top</a></div>\n' "$ch" >> "$OUT"
  # Link to next chapter
  next=$((i + 1))
  if [ $next -lt ${#CHAPTERS[@]} ]; then
    printf '<div class="chapter-top" style="text-align: left;"><a href="#%s">Next: %s &rarr;</a></div>\n' "${CHAPTERS[$next]}" "${CHAPTER_TITLES[$next]}" >> "$OUT"
  fi
  printf '</div>\n\n' >> "$OUT"
done

# --- Footer ---
cat >> "$OUT" << 'FOOTER'
<div class="note">
  <p>Free under <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/">CC BY-NC-SA 4.0</a>. Co-written by R.F. and Claude (Anthropic).</p>
  <p style="margin-top: 8px;">If it made you think, <a href="https://ko-fi.com/checkpointnovel" style="color: #d4a574;">buy the author a coffee</a>.</p>
</div>

</div>
</body>
</html>
FOOTER

echo "Generated $OUT"
echo "$(wc -l < "$OUT") lines"
