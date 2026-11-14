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
| Title & Axis Labels | `titlelabels.qmd` | 9 | 1 |
| **Total** | | **18** | |

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


## Title & Axis Labels

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `titlelabels.qmd:19` | 3, 9 | In the previous chapter, we created plots which did not have any title or labels. Such plots are of no use to any one as they do not indicate what the X and Y axis represent or the primary information being communicated by the plot. The `title` and `labels` play an important part in making the plot holistic. | In the previous chapter, we created plots without any title or labels. Such plots are of no use to anyone, as they do not indicate what the X and Y axis represent or the primary information being communicated by the plot. The `title` and `labels` play an important part in making a plot complete. |
| `titlelabels.qmd:24` | 9 | We will explore both the above methods one by one, and you can choose the method most convenient to you. | We will explore both methods one by one, and you can choose the one most convenient to you. |
| `titlelabels.qmd:38` | 1, 3 | You can add a title to the plot using the `main` argument in the `plot()` function. Ensure that the title is enclosed in single/double quotes as it is a string. | We can add a title to the plot using the `main` argument in the `plot()` function. Ensure that the title is enclosed in single or double quotes, as it is a string. |
| `titlelabels.qmd:50` | 1, 3 | You can add a subtitle to the plot using the `sub` argument in the `plot()` function. The subtitle will appear below the X axis label. Ensure that the subtitle is enclosed in single/double quotes as it is a string. | We can add a subtitle to the plot using the `sub` argument in the `plot()` function. The subtitle will appear below the X axis label. Ensure that the subtitle is enclosed in single or double quotes, as it is a string. |
| `titlelabels.qmd:60` | 3, 9 | In the plots created in the previous examples, the axis labels appear as `mtcars$mpg` and `mtcars$disp`. It is not the best way to name the axis and it will make more sense to use names that describe the data. | In the plots created so far, the axis labels appear as `mtcars$mpg` and `mtcars$disp`. That is not the best way to name an axis; it makes more sense to use names that describe the data. |
| `titlelabels.qmd:71` | 3, 13 | Let us recreate the plots from the previous examples but this time we will use the `title()` instead of the `plot()` function. | Let us recreate the plots from the previous examples, this time adding the labels with `title()` instead of `plot()`. |
| `titlelabels.qmd:83` | 2 | This can be achieved using the `ann` (annotate) argument in the `plot()` function and set it to `FALSE`. | To do this, set the `ann` (annotate) argument in the `plot()` function to `FALSE`. |
| `titlelabels.qmd:98` | 13, 3, 9 | The axis labels are legible and not overwritten. You can use either the `plot()` function or the `title()` function to add title, subtitle and axis labels but ensure that in case you use the `title()` function, set `ann` argument to `FALSE` in the `plot()` function. | The axis labels are legible and not overwritten. You can use either the `plot()` function or the `title()` function to add title, subtitle and axis labels. If you use `title()`, set the `ann` argument to `FALSE` in `plot()`. |
| `titlelabels.qmd:102` | 2, 3 | By default, the `plot()` function will take into account the `min` and `max` values of the variable(s) and set the range for the axis. We can modify the range by using the `xlim` and `ylim` arguments in the `plot()` function. Both the `xlim` and `ylim` arguments take 2 values as inputes. The first value is the minimum value for the axis and the second value is the maximum value for the axis. | By default, the `plot()` function takes the `min` and `max` values of the variable(s) and sets the range for the axis. We can modify the range with the `xlim` and `ylim` arguments in the `plot()` function. Both the `xlim` and `ylim` arguments take 2 values as inputs: the first is the minimum value for the axis, the second is the maximum value for the axis. |

Refusals: "Ensure that the title is enclosed…" keeps "ensure that", a guardrail rather than a hedge (§2.10 override).
"Do you notice that the axis labels are overwritten?" stays: it is his rhetorical question before the fix (§2.7).
"Keep in mind that the axis ranges cannot be modified using the `title()` function." stays verbatim, as does the
syntax table and the webR cell.
