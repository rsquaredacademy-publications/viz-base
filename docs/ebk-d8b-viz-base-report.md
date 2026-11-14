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
| Why Base R Graphics in 2026? | `why-base.qmd` | 4 | 1 |
| Introduction | `intro.qmd` | 4 | 1 |
| **Total** | | **9** | |

## Preface

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `index.qmd:16` | 2, 9 | The R session information when compiling this book is shown below: | The session information used to compile this book is shown below: |

Refusals: The R-version line, the prompts-and-hashes paragraph, the citation block and the corrections note stay.
The prompts paragraph is already his explanation in his voice, and the blockquote on the DOI is a metadata note
with protected numbers.

## Why Base R Graphics in 2026?

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `why-base.qmd:9` | 9 | The usual first question about them is some version of *isn't this the old way?*, and the usual answer is a shrug. | The usual first question is some version of *isn't this the old way?*, and the usual answer is a shrug. |
| `why-base.qmd:39` | 3, 13 | The package has been part of R since before R 1.0 and its core has barely changed, which is either its greatest strength or its most damning indictment depending on who is talking. The reason it survives is that it does one thing very well: it takes coordinates and draws them. | The package has been part of R since before R 1.0, and its core has barely changed. That is either its greatest strength or its most damning indictment, depending on who is talking. It survives because it does one thing very well: it takes coordinates and draws them. |
| `why-base.qmd:52` | 3 | It is not merely available, it is already loaded, which is a stronger guarantee than "cheap to install". | It is not merely available; it is already loaded, which is a stronger guarantee than "cheap to install". |
| `why-base.qmd:148` | 3, 13 | At 10,000 points, constructing the ggplot2 object is about as fast as drawing the whole thing in base graphics — and drawing it is roughly **80 times slower than drawing it in base**. At 100,000 points the gap is worse, and base graphics has not become slower so much as ggplot2 has failed to scale the way the underlying drawing work does. | At 10,000 points, constructing the ggplot2 object is about as fast as drawing the whole thing in base graphics, but drawing it is roughly **80 times slower than drawing it in base**. At 100,000 points the gap widens: base graphics has not become slower, but ggplot2 no longer scales with the underlying drawing work. |

Refusals: The measured argument stays as written. The em-dash parenthetical that lists the high-level functions
(`barplot()` … `image()`) is a list, not a chain, and inline code is protected. The three blockquotes on the
benchmark, the startup overhead and the CRAN metadata are measurements with numbers and package names; their
wording is left alone. The decision-tree prose, the "coordinates in, marks out" bullets and the closing chapter
pointer are already in his voice.


## Introduction

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `intro.qmd:25` | 1, 2 | - Explore: Visualization helps in exploring and explaining patterns and trends<br>- Detect: Patterns or anomalies in data can be detected by looking at graphs<br>- Make sense: Possible to make sense of large amount of data efficiently and in time<br>- Communicate: Easy to communicate and share the insights from data | - Explore: Visualization helps us explore and explain patterns and trends<br>- Detect: We can detect patterns or anomalies in data by looking at graphs<br>- Make sense: We can make sense of a large amount of data efficiently and in time<br>- Communicate: We can communicate and share the insights from data |
| `intro.qmd:38` | 9 | - It is part of base R and is the fundamental package for visualizing data.<br>- It has a lot of good features and we can create all the basic plots using it. | - It is part of base R and the fundamental package for visualizing data.<br>- It has many good features, and we can create all the basic plots with it. |
| `intro.qmd:52` | 3 | Use the `help()` to learn more about `plot()` function and `mtcars` data set. | Use `help()` to learn more about the `plot()` function and the `mtcars` data set. |
| `intro.qmd:73` | 1, 2 | We will use the following different data inputs and observe the kind of plots that are generated: | We will use the following data inputs and observe the kind of plot each one generates: |

Refusals: The chapter orientation and the bulleted syllabus stay (§3a.6, KEEP trait 4). The three-system
description, the ggplot2 credit to Hadley Wickham and the lattice credit to Deepayan Sarkar are untouched, as are
the six dispatch-case headings and the webR cell.
