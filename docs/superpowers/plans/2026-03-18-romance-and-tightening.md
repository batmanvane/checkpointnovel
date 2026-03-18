# Romance Arc Extension + Prose Tightening — Implementation Plan

> **For agentic workers:** REQUIRED: Use superpowers:subagent-driven-development (if subagents available) or superpowers:executing-plans to implement this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Deepen the Tomas-Sara romance across 5 chapters with literary tension, then tighten all 30 chapters by ~10-15% (~141K → ~120-127K words).

**Architecture:** Two sequential phases. Phase 1 writes romance additions into existing scenes (no new chapters). Phase 2 makes surgical prose cuts across all 30 chapters. Both phases preserve voice, plot, and thematic content. Rebuild all outputs after each phase.

**Tech Stack:** Markdown source files, bash build scripts (build.sh, build-reader.sh, build-audiobook.sh), lftp deploy.

**Spec:** `docs/superpowers/specs/2026-03-18-romance-arc-and-prose-tightening-design.md`

---

## Phase 1: Romance Arc

### Task 1: Deepen ch17 — The Meeting

**Files:**
- Modify: `manuscript/chapters/ch17-couple.md`
- Reference: `docs/superpowers/specs/2026-03-18-romance-arc-and-prose-tightening-design.md` (Ch17 section)

- [ ] **Step 1: Read ch17 fully, identify insertion points**

Read `manuscript/chapters/ch17-couple.md`. Locate:
- Sara's first observation of Tomas (currently his pen, his knee bouncing)
- The cafe conversation (Philippe, flat whites)
- The chapter ending (walk out of Le Lent, Rue de Lausanne)

- [ ] **Step 2: Add physical awareness to Sara's first observation**

Near the opening (Sara notices the pen), weave in awareness of his hands — the fingers, the restlessness, the physicality before the intellect. ~50 words.

- [ ] **Step 3: Add the accidental touch during the cafe scene**

During the 5-hour conversation (around the water glass refill or flat white moment), add the touch — fingers meeting, the beat too long, Philippe noticing. ~80 words.

- [ ] **Step 4: Add the walk and lobby goodnight**

After the cafe closes and they leave, extend the walk scene. Side by side, the gap between shoulders, the charge. End with the lobby, the elevator, the hallway. ~200 words.

- [ ] **Step 5: Verify continuity**

Re-read ch17 start to finish. Confirm the new beats feel organic, don't contradict existing dialogue or character voice. Check that Sara's Moleskine observations still flow naturally around the new physical awareness.

- [ ] **Step 6: Commit**

```bash
git add manuscript/chapters/ch17-couple.md
git commit -m "ch17: deepen Tomas-Sara first meeting — physical awareness, touch, lobby"
```

---

### Task 2: Deepen ch18 — The Crisis

**Files:**
- Modify: `manuscript/chapters/ch18-ensemble.md`
- Reference: spec Ch18 section

- [ ] **Step 1: Read ch18, locate the 3 AM scene**

Read `manuscript/chapters/ch18-ensemble.md`. Find the Tomas section where he wakes at 3 AM and Sara holds his arm. Identify exact insertion points.

- [ ] **Step 2: Add Sara's physical awareness during the crisis**

Within the existing scene: pulse under her fingers, heat of skin, smell of sleep and fear. The dual identity — journalist/woman. ~100 words woven into existing paragraphs.

- [ ] **Step 3: Add the aftermath — sitting on the bed edge**

After he calms, before the scene transitions: shoulders touching, the Geneva gap closed, hand staying, room holding its breath. ~100 words.

- [ ] **Step 4: Verify continuity with ch17 and ch20**

The physical vocabulary should escalate from ch17 (gap, charged) to ch18 (closed, touching). Read the Tomas/Sara sections of ch17→ch18 in sequence to confirm the arc builds.

- [ ] **Step 5: Commit**

```bash
git add manuscript/chapters/ch18-ensemble.md
git commit -m "ch18: deepen 3AM crisis — Sara's physical awareness, bed-edge aftermath"
```

---

### Task 3: Write ch20 night scene — The Wave

**Files:**
- Modify: `manuscript/chapters/ch20-ensemble.md`
- Reference: spec Ch20 section

- [ ] **Step 1: Read ch20 Tomas section fully**

Read `manuscript/chapters/ch20-ensemble.md`. Locate:
- The Tomas-Sara phone call (existing)
- The end of Tomas's section
- Where Marco is mentioned (confirm he's at the lab or elsewhere)

- [ ] **Step 2: Modify the phone call to become the trigger**

The existing call stays but its emotional register shifts — Sara hears something in his voice that makes her act. Add 1-2 sentences showing her decision. ~50 words.

- [ ] **Step 3: Write the arrival scene**

Sara arrives at Langstrasse, early morning, after the overnight train. Tomas opens the door. Three seconds of silence. ~100 words.

- [ ] **Step 4: Write the night scene**

Literary tension register. Landscape of sensation, not choreography. Her hand on his chest / heartbeat. His mouth / collarbone / forgotten language. Tram passing uncounted. The silence afterward. Key line about wanting vs. optimization. ~400 words.

- [ ] **Step 5: Write the morning after — brief**

Dawn light. The tram. The coffee table stain. Two people in a room where something has changed. Brief — 2-3 sentences. Not belabored. ~50 words.

- [ ] **Step 6: Verify continuity**

Check that the phone call still flows into ch20's other sections. Verify Marco's location is consistent. Read ch17→ch18→ch20 romance beats in sequence.

- [ ] **Step 7: Commit**

```bash
git add manuscript/chapters/ch20-ensemble.md
git commit -m "ch20: add Tomas-Sara night scene — the wave, literary tension"
```

---

### Task 4: Add doubt to ch24 — The Wanting

**Files:**
- Modify: `manuscript/chapters/ch24-couple.md`
- Reference: spec Ch24 section

- [ ] **Step 1: Read ch24 fully, identify insertion points**

Read `manuscript/chapters/ch24-couple.md`. Locate:
- Sara behind the glass scenes
- Tomas's cognitive struggles
- Domestic scenes (break room, apartment)
- Any existing friction moments

- [ ] **Step 2: Add Tomas's emerging frictions**

Weave into existing domestic beats: Sara's notebooks everywhere, her question-answering habit, the irritation, the shame, the uncertainty — is this him or the optimization dissolving? ~150 words across 2-3 insertion points.

- [ ] **Step 3: Add Sara's parallel doubt**

Within the observation room or a domestic scene: *He never disagreed before. Was that love, or convergence?* Her uncertainty about whether she wants his recovery for love or for validation. ~150 words.

- [ ] **Step 4: Verify continuity**

The doubt should feel earned — the night in ch20 was intense, and now (weeks later, BCI passive) the intensity is fading or changing. Read ch20 night scene → ch24 doubt beats to confirm the arc.

- [ ] **Step 5: Commit**

```bash
git add manuscript/chapters/ch24-couple.md
git commit -m "ch24: add convergence doubt — frictions, parallel uncertainty"
```

---

### Task 5: Add open end to ch27 — The Disagreement

**Files:**
- Modify: `manuscript/chapters/ch27-couple.md`
- Reference: spec Ch27 section

- [ ] **Step 1: Read ch27, locate the tram/daffodils section**

Read `manuscript/chapters/ch27-couple.md`. Find the scene after the Marco empanada argument where Tomas takes the tram home and buys daffodils.

- [ ] **Step 2: Add the memory doubt**

On the tram, holding daffodils: Tomas tries to remember the ch20 night. Can't hold the memory clearly. Was it cached? Optimized? His memory formed while the BCI was still writing. ~150 words.

- [ ] **Step 3: Verify the final beat**

The existing ending ("hands together, thoughts unsynchronized") now carries the convergence question. Read it in context of the new doubt passage. Ensure it lands as ambiguous — love or dissolution? — not resolved.

- [ ] **Step 4: Commit**

```bash
git add manuscript/chapters/ch27-couple.md
git commit -m "ch27: add memory doubt on tram — convergence question stays open"
```

---

### Task 6: Rebuild and verify Phase 1

**Files:**
- Run: `manuscript/build-reader.sh`, `manuscript/build.sh`, `manuscript/build-audiobook.sh`

- [ ] **Step 1: Rebuild all outputs**

```bash
bash manuscript/build-reader.sh
bash manuscript/build-audiobook.sh
bash manuscript/build.sh 2>&1
```

- [ ] **Step 2: Spot-check romance arc in HTML reader**

Open `website/read/index.html` in browser. Read ch17, ch18 (Tomas section), ch20 (Tomas section), ch24, ch27 in sequence. Verify the arc reads smoothly: meeting → crisis → night → doubt → open end.

- [ ] **Step 3: Count new word total**

```bash
wc -w manuscript/chapters/ch*.md | tail -1
```

Expected: ~142,500-143,500 (original 141,203 + ~1,800-2,400 additions).

- [ ] **Step 4: Commit rebuilt outputs**

```bash
git add website/read/index.html manuscript/Checkpoint-Draft.pdf manuscript/audiobook/
git commit -m "Rebuild outputs after romance arc additions"
```

---

## Phase 2: Prose Tightening

Each task covers 3-5 chapters. The agent reads each chapter, makes surgical cuts following the 5 categories from the spec (redundant restatement, sensory catalogues, repeated info, dialogue scaffolding, thematic over-signaling), and tracks word count reduction.

### Task 7: Tighten ch23, ch19, ch18 (longest chapters)

**Files:**
- Modify: `manuscript/chapters/ch23-ensemble.md` (~7,583 words)
- Modify: `manuscript/chapters/ch19-linwei.md` (~7,207 words)
- Modify: `manuscript/chapters/ch18-ensemble.md` (~6,797 words)

- [ ] **Step 1: Record starting word counts**

```bash
wc -w manuscript/chapters/ch23-ensemble.md manuscript/chapters/ch19-linwei.md manuscript/chapters/ch18-ensemble.md
```

- [ ] **Step 2: Tighten ch23**

Read fully. Apply cuts: redundant restatement, over-extended sensory catalogues, dialogue scaffolding, thematic over-signaling. Target: ~10-15% reduction (~750-1,100 words cut). Preserve all plot, character, dialogue exchanges.

- [ ] **Step 3: Tighten ch19**

Same approach. Target: ~720-1,080 words cut.

- [ ] **Step 4: Tighten ch18**

Same approach. Note: ch18 now contains romance additions from Task 2 — apply same tightening standard to new and old material. Target: ~680-1,020 words cut.

- [ ] **Step 5: Record final word counts and commit**

```bash
wc -w manuscript/chapters/ch23-ensemble.md manuscript/chapters/ch19-linwei.md manuscript/chapters/ch18-ensemble.md
git add manuscript/chapters/ch23-ensemble.md manuscript/chapters/ch19-linwei.md manuscript/chapters/ch18-ensemble.md
git commit -m "Tighten ch18, ch19, ch23 — cut ~X words"
```

---

### Task 8: Tighten ch22, ch21, ch13, ch15 (6K+ chapters)

**Files:**
- Modify: `manuscript/chapters/ch22-henning.md` (~6,390 words)
- Modify: `manuscript/chapters/ch21-maya.md` (~6,372 words)
- Modify: `manuscript/chapters/ch13-linwei.md` (~6,083 words)
- Modify: `manuscript/chapters/ch15-henning.md` (~6,091 words)

- [ ] **Step 1: Record starting word counts**
- [ ] **Step 2: Tighten ch22** — Target: ~640-960 words cut
- [ ] **Step 3: Tighten ch21** — Target: ~640-960 words cut
- [ ] **Step 4: Tighten ch13** — Target: ~610-910 words cut
- [ ] **Step 5: Tighten ch15** — Target: ~610-910 words cut
- [ ] **Step 6: Record final word counts and commit**

---

### Task 9: Tighten ch04, ch17, ch20, ch24, ch27 (romance + medium chapters)

**Files:**
- Modify: `manuscript/chapters/ch04-amara.md` (~6,010 words)
- Modify: `manuscript/chapters/ch17-couple.md` (~5,452 words)
- Modify: `manuscript/chapters/ch20-ensemble.md` (~4,715 words + romance additions)
- Modify: `manuscript/chapters/ch24-couple.md` (~4,821 words + romance additions)
- Modify: `manuscript/chapters/ch27-couple.md` (~4,931 words + romance additions)

- [ ] **Step 1: Record starting word counts**
- [ ] **Step 2: Tighten ch04** — Target: ~600-900 words cut
- [ ] **Step 3: Tighten ch17** — Target: ~545-820 words cut. Note: contains romance additions from Task 1
- [ ] **Step 4: Tighten ch20** — Target: ~500-750 words cut. Note: contains night scene from Task 3
- [ ] **Step 5: Tighten ch24** — Target: ~500-750 words cut. Note: contains doubt beats from Task 4
- [ ] **Step 6: Tighten ch27** — Target: ~500-750 words cut. Note: contains memory doubt from Task 5
- [ ] **Step 7: Record final word counts and commit**

---

### Task 10: Tighten ch14, ch10, ch11, ch26, ch09 (medium chapters)

**Files:**
- Modify: `manuscript/chapters/ch14-maya.md` (~4,979 words)
- Modify: `manuscript/chapters/ch10-maya.md` (~4,586 words)
- Modify: `manuscript/chapters/ch11-linwei.md` (~4,659 words)
- Modify: `manuscript/chapters/ch26-linwei.md` (~5,736 words)
- Modify: `manuscript/chapters/ch09-henning.md` (~5,046 words)

- [ ] **Step 1: Record starting word counts**
- [ ] **Step 2: Tighten ch14** — Target: ~500-750 words cut
- [ ] **Step 3: Tighten ch10** — Target: ~460-690 words cut
- [ ] **Step 4: Tighten ch11** — Target: ~470-700 words cut
- [ ] **Step 5: Tighten ch26** — Target: ~575-860 words cut
- [ ] **Step 6: Tighten ch09** — Target: ~505-760 words cut
- [ ] **Step 7: Record final word counts and commit**

---

### Task 11: Tighten remaining chapters (shorter, lighter pass)

**Files:**
- Modify: `manuscript/chapters/ch01-henning.md` (~3,521 words)
- Modify: `manuscript/chapters/ch02-maya.md` (~3,592 words)
- Modify: `manuscript/chapters/ch03-linwei.md` (~4,662 words)
- Modify: `manuscript/chapters/ch05-henning.md` (~3,450 words)
- Modify: `manuscript/chapters/ch06-maya.md` (~4,573 words)
- Modify: `manuscript/chapters/ch07-linwei.md` (~2,980 words)
- Modify: `manuscript/chapters/ch08-amara.md` (~4,324 words)
- Modify: `manuscript/chapters/ch12-amara.md` (~4,041 words)
- Modify: `manuscript/chapters/ch16-amara.md` (~4,127 words)
- Modify: `manuscript/chapters/ch25-amara.md` (~3,460 words)
- Modify: `manuscript/chapters/ch28-henning.md` (~3,544 words)

Skip ch00 (prolog, 635 words — already tight) and ch29 (epilog, 836 words — author's note).

- [ ] **Step 1: Record starting word counts**
- [ ] **Step 2: Tighten ch01 through ch28** — ~10% target per chapter. Lighter pass on shorter chapters.
- [ ] **Step 3: Record final word counts and commit**

---

### Task 12: Final rebuild, word count, deploy

**Files:**
- Run: all build scripts + deploy.sh

- [ ] **Step 1: Final word count**

```bash
wc -w manuscript/chapters/ch*.md | tail -1
```

Target: 120,000-127,000 words.

- [ ] **Step 2: Rebuild all outputs**

```bash
bash manuscript/build-reader.sh
bash manuscript/build-audiobook.sh
bash manuscript/build.sh 2>&1
```

- [ ] **Step 3: Update website word count**

Update `website/index.html` — the 4 places that reference word count (schema, commit meta, chapter list footer, analytics section).

- [ ] **Step 4: Commit and push**

```bash
git add manuscript/ website/
git commit -m "Complete romance arc + prose tightening: ~141K → ~12XK words"
git push
```

- [ ] **Step 5: Deploy**

```bash
./deploy.sh
```

- [ ] **Step 6: Verify live site**

Check that `checkpoin.de`, `checkpoin.de/read/`, and `checkpoin.de/assets/Checkpoint-Draft.pdf` all reflect the updated content.
