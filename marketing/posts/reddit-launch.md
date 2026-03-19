# Reddit Launch Posts

Different versions for different subreddits. Reddit hates self-promotion that smells like self-promotion. Lead with value, be transparent about AI, invite criticism.

---

## r/scifi or r/printSF

**Title:** Free hard sci-fi novel about what happens when BCIs start writing to 900 million brains (CC licensed, full text online)

**Body:**

I wrote a novel called *Checkpoint* set in 2041. The premise: a brain-computer interface — a small patch behind the ear — has gone mainstream. 900 million users. It reads the brain. It also writes to it. Five layers of "reasonable engineering" that nobody holds in their head at once, and the result is cognitive convergence on a global scale.

Four POVs: a German master electrician who notices his apprentices all hold their tools at the same angle. A US neuroscientist who finds five brains building identical structures. A Chinese engineer who realizes she built the mechanism. A Kenyan teacher whose pen-pal letters show thirty children becoming one voice.

Full disclosure: it was co-written with Claude (Anthropic's AI). I'm a researcher in applied ML — I used agentic workflows to write it, which is its own kind of irony given the subject matter. The process is part of the point.

The whole thing is free under CC BY-NC-SA 4.0. Read online, download the PDF, or browse the repo:

https://checkpoin.de

Happy to take criticism. The review process was brutal and there are probably still things I missed.

---

## r/singularity

**Title:** I used agentic AI to write a 123K-word novel about BCI-driven cognitive convergence. The process mirrored the premise.

**Body:**

Researcher in applied ML. Between semesters I usually write papers. This time I pointed the same agentic workflow at fiction and got a complete hard sci-fi novel in days.

The novel (*Checkpoint*) is set in 2041. A BCI patch adopted by 900M people. Five engineering layers — each reasonable, each approved — that together create a recursive feedback loop writing to the human brain 24/7, including during sleep. The brains converge. Not metaphorically. Structurally. Same lattice in the prefrontal cortex. Same attractor states in cognitive space.

The uncomfortable part: writing the novel with AI raised the same question the novel asks. Where does the human direction stop and the machine generation begin? I steered, edited, decided. Claude drafted. By chapter 20, the boundary was a gradient.

One concrete finding: review took far longer than generation. Writing is fast now. Knowing what's good is still slow.

Free. CC licensed. Full repo open:

https://checkpoin.de

---

## r/artificial or r/ClaudeAI

**Title:** Case study: using Claude + agentic workflows to write a 123K-word hard sci-fi novel from scratch

**Body:**

I'm an ML researcher. I used Claude (Opus) with an agentic workflow to write a complete novel — concept, world-building, 30 chapters, editing, audiobook generation, website, deployment. The whole pipeline.

Some things that worked:
- Parallel subagents for review (5 agents scanning different chapter batches simultaneously)
- Iterative style passes (identified "the way [X] [verbed]" as the dominant AI-writing tic — appeared 100+ times. Cut ~45%)
- Build scripts that regenerate HTML, PDF, and audiobook text from markdown source in one command

Some things that didn't:
- Agents over-cutting during prose tightening (one batch cut 52% of a chapter — had to revert and redo with stricter constraints)
- Consistency across 30 chapters required multiple dedicated passes (names, timelines, device model numbers all drifted)

The novel itself is about BCIs writing to human brains — so the meta-layer of an AI writing about AI writing to brains was... something.

Free, open source, CC licensed:

https://checkpoin.de
https://github.com/batmanvane/checkpointnovel

---

## r/claudecode

**Flair:** Show and Tell

**Title:** Used Claude Code to write, edit, and deploy a 123K-word hard sci-fi novel — full pipeline from markdown to production

**Body:**

**Disclosure:** This is my project. It's free (CC BY-NC-SA 4.0). No cost, no paywall, no affiliate links. I'm the author. I'm sharing it because the Claude Code workflow might be interesting to this community.

**What it is:** A hard sci-fi novel called *Checkpoint* — 30 chapters, ~123,000 words, set in 2041. BCIs adopted by 900M people. The device reads the brain. It also writes to it. Four POVs across four continents.

**What the Claude Code pipeline looked like:**

*Research & concept:* World-building bible, character sheets, chapter outlines — all generated collaboratively in Claude, iterated through feedback loops.

*Writing:* Chapter-by-chapter generation from the outline. Each chapter drafted, reviewed, revised in conversation. Markdown source files, git-tracked from day one.

*Editing — this is where Claude Code shined:*
- Dispatched 5 parallel review agents across all 30 chapters to find inconsistencies, factual errors, clunky phrasing, and AI-writing tics
- Found ~50 issues: 60Hz power hum in Germany (should be 50Hz), wrong football club, character nationality contradicting between chapters, a psychiatrist called a surgeon
- Style pass: identified "the way [X] [verbed]" appearing 100+ times — the novel's biggest AI-writing tell. Cut ~45% across 30 chapters using parallel agents
- Prose tightening: 143K → 123K words. One agent batch cut a chapter by 52% (had to `git checkout HEAD` and redo with stricter constraints in the prompt)

*Build pipeline:*
- `build.sh` — pandoc + xelatex → PDF
- `build-reader.sh` — markdown → single-page HTML reader
- `build-audiobook.sh` — markdown → ElevenLabs-ready plain text
- `deploy.sh` — builds everything + FTP syncs to production server via lftp

*One-command deploy:* `./deploy.sh` rebuilds all formats from the markdown source and pushes to the live site.

**What I learned about Claude Code for long-form creative work:**

1. **Parallel agents are powerful but need constraints.** "Cut 10-15%" without a hard ceiling led to 52% cuts. "STRICT 10%. Do NOT exceed 15% on any chapter" worked.
2. **Consistency across 30 chapters is hard.** Names, ages, timelines, device model numbers, even the Hz of fluorescent lights — all drifted. Dedicated consistency-check agents were essential.
3. **The 1M context window matters.** Earlier models couldn't hold the full novel. Opus 4.6 with 1M context could cross-reference chapters in a single pass.
4. **Review > generation.** The writing was fast. Finding what was wrong — factual errors, style tics, logical inconsistencies, cultural false notes — took 3x longer.

**Repo:** https://github.com/batmanvane/checkpointnovel
**Live:** https://checkpoin.de (read online, PDF, audiobook)

---

## r/selfpublish

**Title:** Wrote a 123K-word novel with AI in days. The editing took weeks. Some notes on the process.

**Body:**

I'm not a novelist — I'm an ML researcher. Between semesters I used agentic AI workflows (Claude) to write a hard sci-fi novel called *Checkpoint*. BCI premise, four POVs, set in 2041.

The generation was fast. The editing was where the actual work happened:

- **Factual errors**: 60Hz power hum in Germany (should be 50Hz). Wrong football club name. A psychiatrist called a surgeon. The AI doesn't fact-check its own output.
- **Consistency**: Character ages drifted between chapters. Device model numbers contradicted each other. A character was Colombian in one chapter and Spanish in another.
- **Style tics**: The construction "the way [X] [verbed]" appeared 100+ times across 30 chapters. Had to do a dedicated pass to cut it.
- **Prose tightening**: Went from 143K to 123K words. One automated pass cut a chapter by 52% — had to revert. Constraints matter.

The result is free under Creative Commons. Full text, audiobook, PDF, and the complete git history showing every edit:

https://checkpoin.de

Curious if anyone else has tried this pipeline. What was your editing experience like?

---

## Target subreddits (ranked by fit)

| Subreddit | Members | Angle | Self-promo rules |
|-----------|---------|-------|-----------------|
| r/singularity | ~1.5M | AI + BCI convergence | Tolerant if substantive |
| r/scifi | ~3.5M | The novel itself | Check rules, some ban self-promo |
| r/printSF | ~350K | Serious readers | Self-promo threads only |
| r/artificial | ~700K | AI process | Tolerant |
| r/ClaudeAI | ~200K | Tool-specific | Very tolerant |
| r/selfpublish | ~200K | Process/craft | Self-promo welcome |
| r/coolgithubprojects | ~60K | The repo | Direct links welcome |
| r/MachineLearning | ~3M | Agentic workflows | Must be substantive |

**Note:** Check each sub's rules before posting. r/scifi and r/printSF may require self-promo in designated threads. r/MachineLearning wants technical substance, not just "look what I made."
