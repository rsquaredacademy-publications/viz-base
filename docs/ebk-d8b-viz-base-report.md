# eBook style pass — Data Visualization with R: Base Graphics (ebk-d8b)

Date: 2026-11-14. Worktree `viz-base`, branch `task/viz-base-style-1114`, built on base commit `8aa1bcf`
(origin/master).
**Against:** `docs/style-guide.md` §1 (voice, KEEP traits), §2 (the checklist), §3a (decisions, 2026-10-30), §5
(report format, do-not-touch, keep-his-voice); `docs/voice-spoken.md`; `docs/williams-checklist.md`.
**Level of change:** the approved pilot (`F:/pm/notes/2026-11-06-ebook-style-pilot.md`) and the merged intro-r
pass (`ebk-ir2`).
**Scope:** prose only. Code, chunk labels and options, inline code, outputs, headings and anchors, file names,
webR cells, `<details>` answer blocks, callout types, numbers, data and file names, link targets and the chapter
footer structure are untouched. No restructuring, no new chapters, no changed examples.

Rows are in source order. One row is one sentence or paragraph, quoted from the diff with inline code intact.
Line numbers are the line in the committed file. Each chapter carries one refusal paragraph listing the sentences
left alone and the override that protects them, so the coverage numbers are real.

## Summary

| Chapter | File | Changes | Refusals |
| :-- | :-- | --: | --: |
| Preface | `index.qmd` | 1 | 1 |
| **Total** | | **1** | |

## Preface

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `index.qmd:16` | 2, 9 | The R session information when compiling this book is shown below: | The session information used to compile this book is shown below: |

Refusals: The R-version line, the prompts-and-hashes paragraph, the citation block and the corrections note stay.
The prompts paragraph is already his explanation in his voice, and the blockquote on the DOI is a metadata note
with protected numbers.
