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
| Scatter Plots | `scatter.qmd` | 13 | 1 |
| Line Graphs | `line.qmd` | 19 | 1 |
| **Total** | | **50** | |

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


## Scatter Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `scatter.qmd:11` | 13 | - adding color to the points<br>- modify shape of the points<br>- modify size of the points | - add color to the points<br>- modify the shape of the points<br>- modify the size of the points |
| `scatter.qmd:18` | 3, 9 | Let us recreate the plot that we had created in Chapter 2 by using the `mtcars` data set. We will use the `disp` (displacement) and `mpg` (miles per gallon) variables. `disp` will be on the X axis and `mpg` will be on the Y axis. | Let us recreate the plot we created in Chapter 2, using the `mtcars` data set. We will use the `disp` (displacement) and `mpg` (miles per gallon) variables, with `disp` on the X axis and `mpg` on the Y axis. |
| `scatter.qmd:24` | 3, 9 | We have created a very basic plot and any one looking at it for the first time will get confused with the axis labels `mtcars$disp` and `mtcars$mpg`. Let us put into practice what we learnt in Chapter 3, and add a title to the plot, and make the axis labels more meaningful. | We have created a very basic plot, and anyone looking at it for the first time will be confused by the axis labels `mtcars$disp` and `mtcars$mpg`. Let us put into practice what we learnt in Chapter 3, and add a title and more meaningful axis labels. |
| `scatter.qmd:32` | 3, 9 | Now the plot clearly communicates that it represents the relationship between the displacement and mileage of cars. Now the color of the points in the plot is black by default. Some of us may agree that black is beautiful but not all of us will like it. As a first step in enhancing the way our plot looks, let us change the shape of the points. | Now the plot clearly communicates that it represents the relationship between displacement and mileage of cars. The color of the points is black by default. Some of us may agree that black is beautiful, but not all of us will like it. As a first step in improving the way our plot looks, let us change the shape of the points. |
| `scatter.qmd:36` | 1, 2, 4 | The shape of the point can be specified using the `pch` argument. It will take values between **0** and **25**. Below is an example: | We can specify the shape of the point using the `pch` argument. It takes values between **0** and **25**: |
| `scatter.qmd:43` | 9 | Let us check out a few of the other shapes: | Let us look at a few of the other shapes: |
| `scatter.qmd:59` | 3, 4, 13 | We can specify the shape based on a third (categorical variable as well). In the below plot, the shape is based on the levels of the categorical variable `cyl` (number of cylinders) from the `mtcars` data set. Note that `nlevels(factor(mtcars$cyl))` returns a single value (`3`), so it would give every point the same shape — instead, map each observation to its own level with `as.numeric(factor(...))`: | We can specify the shape based on a third (categorical) variable as well. In the plot below, the shape is based on the levels of the categorical variable `cyl` (number of cylinders) from the `mtcars` data set. Note that `nlevels(factor(mtcars$cyl))` returns a single value (`3`), so it would give every point the same shape. Instead, map each observation to its own level with `as.numeric(factor(...))`: |
| `scatter.qmd:72` | 1 | The size of the points in the scatter plot can be specified using the `cex` argument in the `plot()` function. | We can specify the size of the points in the scatter plot using the `cex` argument in the `plot()` function. |
| `scatter.qmd:79` | 4 (§3a.3) | The below plots show the size of the points for values relative to 1. | The plots below show the size of the points for values relative to 1. |
| `scatter.qmd:98` | 2, 9 | The background color can be specified only for points whose `pch` argument takes values between **21** and **25**. Let us look at some examples to understand this distinction between border and background color. | The background color can be specified only for points whose `pch` value is between **21** and **25**. Let us look at some examples of the distinction between border and background color: |
| `scatter.qmd:105` | 3, 9 | You can observe that although we have specified a background color using the `bg` argument, we do not see the red background color as the value specified for the `pch` (shape) argument is not between 21 and 25. In the next example, we will use a value between 21 and 25 so that the `pch` argument is effective. | Although we have specified a background color using the `bg` argument, we do not see the red background, because the value of the `pch` (shape) argument is not between 21 and 25. In the next example, we use a value between 21 and 25 so that the `pch` argument is effective. |
| `scatter.qmd:112` | 2, 1, 9 | The color of the points can be specified using (levels) of a categorical variable as well. In the next example, we will use the `cyl` variable to specify the color of the points. | We can also specify the color of the points using the levels of a categorical variable. In the next example, we use the `cyl` variable to specify the color of the points. |
| `scatter.qmd:122` | 2, 9 | Since `cyl` is a categorical variable with 3 levels, we can see that the points now have 3 different colors. The above method is useful when you want to segregate the points in a scatter plot based on a third variable. | Since `cyl` is a categorical variable with 3 levels, the points now have 3 different colors. This method is useful when you want to separate the points in a scatter plot based on a third variable. |

Refusals: "Some of us may agree that black is beautiful…" stays: it is a light line, allowed by §3a.12, and only its
punctuation changed. The `pch` gallery, the two-variable figure and the webR cell are untouched. "learnt" (line
24) is kept: it is a protected trait (V §7.7) and the guide leaves the spelling to Aravind (§4.3).


## Line Graphs

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `line.qmd:9` | 3 | In this chapter, we will build line graphs. To be more specific we will learn to | In this chapter, we will build line graphs. More specifically, we will learn to |
| `line.qmd:24` | 3, 9, 2 | It allows us to specify the symbol that must be used to represent the data. Let us begin by building a simple line graph. We will use the `AirPassengers` data set in this chapter. Before we begin to build the plot, let us take a quick look at the data in order to understand what we are plotting. | It allows us to specify the symbol used to represent the data. Let us begin with a simple line graph, using the `AirPassengers` data set. Before we build the plot, let us take a quick look at the data to understand what we are plotting. |
| `line.qmd:30` | 3 | In order to build a line plot, we will set the `type` argument in the `plot()` function to **l** (line). There are other values which `type` takes but we will explore them later. | To build a line plot, we set the `type` argument in the `plot()` function to **l** (line). There are other values which `type` takes, but we will explore them later. |
| `line.qmd:43` | 1, 2 | Another option is to have the points and lines overplotted. It can be achieved by setting the `type` argument to **o** (overplotted). | Another option is to overplot the points and lines. We do this by setting the `type` argument to **o** (overplotted). |
| `line.qmd:49` | 3 | You can also create lines without points but with breaks instead by setting the `type` argument to **c**. | You can also create lines without points but with breaks instead, by setting the `type` argument to **c**. |
| `line.qmd:57` | 9, 11 | So now we know how to build a simple line graph. Let us now make this plot more elegant by modifying its appearance. Let us begin by adding some color to the line using the `col` argument in the `plot()` function. | So now we know how to build a simple line graph. Let us make this plot more elegant by modifying its appearance, beginning with some color on the line using the `col` argument in the `plot()` function. |
| `line.qmd:71` | 1, 2, 4 | The line type can be modified using the `lty` argument. It takes values from 1 to 6 and the default value is 1. Below is an example: | We can modify the line type using the `lty` argument. It takes values from 1 to 6, and the default is 1: |
| `line.qmd:84` | 4 (§3a.3) | Let us look at all the line types in the below example: | Let us look at all the line types in the example below: |
| `line.qmd:97` | 9 | Instead of specifying the numbers 1:6, you can use their description as well. | Instead of specifying the numbers 1:6, you can use their descriptions. |
| `line.qmd:112` | 1, 9 | The width of the lines can be modified using the `lwd` argument in the `plot()` function. The default value for width is 1. | We can modify the width of the lines using the `lwd` argument in the `plot()` function. The default width is 1. |
| `line.qmd:118` | 4 (§3a.3), 9 | In the below example, we look at the width of the lines relative to the default value. | In the example below, we look at the width of the lines relative to the default. |
| `line.qmd:133` | 3 | We can enhance the points in the line plot in the same way as we enhanced the points in the scatter plot in this previous chapter. | We can enhance the points in the line plot in the same way as we enhanced the points in the scatter plot in the previous chapter. |
| `line.qmd:139` | 2, 9 | One drawback of the above method is that the color of the line and the points will be the same. | One drawback of this method is that the line and the points share the same color. |
| `line.qmd:144` | 9 | In the next example, let us first build the line plot, add points using the `points()` function and then specify separate colors to the line and the points. | In the next example, let us build the line plot, add points using the `points()` function, and then give the line and the points separate colors. |
| `line.qmd:153` | 2 | If you want to compare variables, you would want to add additional lines to the line graph. In R, this can be achieved using the `lines()` function. | If you want to compare variables, you will want to add additional lines to the line graph. In R, we do this with the `lines()` function. |
| `line.qmd:155` | 2, 10 | **Before you add additional lines, it is important to ensure that the range of both the axis are modified to accommodate the data of the additional lines. | **Before you add additional lines, ensure that the range of both axes is modified to accommodate the data of the additional lines. |
| `line.qmd:157` | 9 | Let us now create a line plot and add an additional line using the `lines()` function.We will use some dummy data for this example: | Let us now create a line plot and add an additional line using the `lines()` function. We will use some dummy data for this example: |
| `line.qmd:166` | 3, 9 | Let us recreate the plot but this time we will modify the range of the axis to accommodate the second line (data2). | Let us recreate the plot, this time modifying the range of the axis to accommodate the second line (data2). |
| `line.qmd:285` | 3 | Finally let us enhance the plot by adding a title and modifying the axis labels. | Finally, let us enhance the plot by adding a title and modifying the axis labels. |

Refusals: The "Uncertainty and Annotation" sections already read in the target voice: short sentences, function
first, then the argument. `segments()`, `arrows()`, `polygon()` and their code are untouched. "If you do not like
plain lines…" stays as his invitation. The two figures and their alt text are protected.
