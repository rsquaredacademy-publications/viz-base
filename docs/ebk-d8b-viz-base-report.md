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
| Bar Plots | `bar.qmd` | 23 | 1 |
| Box Plots | `box.qmd` | 12 | 1 |
| Histograms | `hist.qmd` | 14 | 1 |
| **Total** | | **99** | |

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

## Bar Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `bar.qmd:30` | 3, 8 | The length of the bars are proportional to the values they represent. | The length of each bar is proportional to the value it represents. |
| `bar.qmd:32` | 1, 2, 4, 9 | In the below example, the `cyl` variable from the `mtcars` data set is visualized using a bar plot. The categories or levels are `4`, `6` and `8` which represent the number of cylinders in the automobile and are represented on the X axis. The frequency for each type of cylinder is represented by the Y axis. | In the example below, we visualize the `cyl` variable from the `mtcars` data set using a bar plot. The categories or levels are `4`, `6` and `8`, which represent the number of cylinders in the automobile, and they appear on the X axis. The Y axis represents the frequency for each type of cylinder. |
| `bar.qmd:34` | 1, 2, 9 | In R, bar plots can be created using either the `plot()` or `barplot()` function. The input to both the functions are different. In case of the `plot()` function, we can specify the variable but it must be converted to a factor variable. In case of the `barplot()` function, the input must be the count or frequency of the variable. The `table()` function can be used to generate the counts/frequency for a variable. | In R, we can create bar plots using either the `plot()` or the `barplot()` function. The two take different inputs. With `plot()`, we specify the variable, but it must be converted to a factor. With `barplot()`, the input must be the count or frequency of the variable, which we can generate with `table()`. |
| `bar.qmd:48` | 2, 9 | If you observe carefully, the same plot is generated by both the functions. Before we explore the bar plots further, let us store the data in a new variable instead of using the `table()` function in every example: | If you observe carefully, both functions generate the same plot. Before we explore bar plots further, let us store the data in a new variable instead of calling `table()` in every example: |
| `bar.qmd:57` | 3, 9 | Bar plots can be horizontal or veritcal (which is the default). Use the `horiz` argument in the `barplot()` function to build a horizontal bar plot. As you can see, the axis have been flipped. | Bar plots can be horizontal or vertical (the default). Use the `horiz` argument in the `barplot()` function to build a horizontal bar plot. As you can see, the axes have been flipped: |
| `bar.qmd:65` | 1, 2, 3, 9 | In the bar plot, the width of the bars and the space between them are same. A specific category of the variable can be highlighted by increasing/decreasing the width of the bar representing it. In our example, we will increase the width of the bar that represents automobiles with 8 cylinders. The `width` argument is used to specify the width of the bars. The width must be specified for all the bars in the plot. It must be a vector the length of which must be equal to the number of categories of the variable. | In a bar plot, the width of the bars and the space between them are the same. We can highlight a specific category by increasing or decreasing the width of the bar that represents it. In our example, we will increase the width of the bar that represents automobiles with 8 cylinders. The `width` argument specifies the width of the bars, and it must be given for all the bars in the plot. It must be a vector whose length equals the number of categories of the variable. |
| `bar.qmd:75` | 4 (§3a.3) | In the below example, the width of the third bar is twice the width of the other two bars | In the example below, the width of the third bar is twice the width of the other two bars: |
| `bar.qmd:81` | 3, 9 | In the below example, the width of the second bar is half the width of the other first bar and the third bar is twice the width of the first bar. | In the example below, the width of the second bar is half the width of the first bar, and the third bar is twice the width of the first bar. |
| `bar.qmd:87` | 2, 3, 4 | The space between the bars can be specified in a similar manner but using the `space` argument in the `barplot()` function: In the below example, the space between the third bar and the second bar is twice the space between first and second bar. | We can specify the space between the bars in a similar manner using the `space` argument in the `barplot()` function. In the example below, the space between the third bar and the second bar is twice the space between the first and second bar. |
| `bar.qmd:95` | 2, 9, 4, 10 | It is important to add appropriate labels to the bars in order to communicate properly. In our example, the bars represent automobiles with different number of cylinders. The labels likewise indicate the number of cylinders represented by the bars. In order to demonstrate how to add labels, we will change the labels from numbers to their corresponding words. The `names.arg` argument is used to add labels to the bars in a plot. Below is our example: | Label the bars so readers know what each one represents. In our example, the bars represent automobiles with different numbers of cylinders, and the labels indicate the number of cylinders. To demonstrate how to add labels, we will change them from numbers to the corresponding words. The `names.arg` argument adds labels to the bars in a plot: |
| `bar.qmd:127` | 3, 9, 4 | The `border` argument specifies the color of the border of the bars. The rules that apply to `col` argument apply here also. Below are the examples: | The `border` argument specifies the color of the bars' borders. The rules that apply to the `col` argument apply here too: |
| `bar.qmd:159` | 2, 1, 9 | The `axes` argument can be used to retain/remove the axes from the plot. It takes logical values as input and the default is `TRUE`. Set it to `FALSE` to remove the axes from the plot: | The `axes` argument retains or removes the axes from the plot. It takes logical values as input, and the default is `TRUE`. Set it to `FALSE` to remove the axes: |
| `bar.qmd:165` | 1, 2, 9 | If we decide to retain the axes, the line type of the X axes can be specified using the `axis.lty` argument. It does not modify the line type of the Y axes and it will not work if the `axes` argument is set to `FALSE`. | If we retain the axes, we can specify the line type of the X axis using the `axis.lty` argument. It does not modify the line type of the Y axis, and it will not work if the `axes` argument is set to `FALSE`. |
| `bar.qmd:171` | 4, 9 | Though we cannot modify the line type of the Y axes, we can offset it using the `offset` argument. In the below example, we will offset the Y axes and you can observe that the minimum value of the Y axes is now 5 instead of 0. | Though we cannot modify the line type of the Y axis, we can offset it using the `offset` argument. In the example below, we offset the Y axis, and you can observe that its minimum value is now 5 instead of 0. |
| `bar.qmd:177` | 3, 9 | You can similarly modify the range of the Y axes using the `ylim` argument. Although in case of bar plots, modifying the range of the plot may not be very useful. | You can similarly modify the range of the Y axis using the `ylim` argument, though in bar plots modifying the range may not be very useful. |
| `bar.qmd:185` | 2 | Let us quickly revise what we have learnt so far and build a bar plot for visualizing the `cyl` variable in the `mtcars` data set: | Let us quickly revise what we have learnt so far and build a bar plot to visualize the `cyl` variable in the `mtcars` data set: |
| `bar.qmd:196` | 3, 9 | Well the plot looks good but for someone who does not know the underlying data, it will diffficult to understand what is being communicated. | Well, the plot looks good, but for someone who does not know the underlying data, it will be difficult to understand what is being communicated. |
| `bar.qmd:212` | 3 | A bivariate bar plot represents the cross table or two way table of categorical variables. | A bivariate bar plot represents the cross table, or two-way table, of categorical variables. |
| `bar.qmd:226` | 9 | The number of gears is represented by the columns in the table and the number of cylinders is represented by the rows. | The number of gears is represented by the columns in the table, and the number of cylinders by the rows. |
| `bar.qmd:237` | 9, 3 | The bars in the plot represent the distribution of `cyl` for each level of category of the `gear` variable. The first bar represents the distribution of cylinders for automobiles with 3 gears. From the two way table we saw earlier, the columns are the bars. The rows are represented by different sections of the bar. Let us add some colors to the plot as the default colors of the plot are not very intuitive. It will also allow us to clearly examine the distribution of `cyl` for the different levels of `gear`. | The bars in the plot represent the distribution of `cyl` for each level of the `gear` variable. The first bar represents the distribution of cylinders for automobiles with 3 gears. In the two-way table from earlier, the columns are the bars and the rows are the sections within each bar. Let us add some color, as the default colors are not very intuitive, and it will also allow us to examine the distribution of `cyl` for the different levels of `gear` more clearly. |
| `bar.qmd:252` | 2, 3, 9 | We need to convey the above information in some way and will do that using the `legend.text` argument. It takes a character vector as input and the default value is `NULL`, in which case no legend text is added. | We need to convey the above information in some way, and we do that with the `legend.text` argument. It takes a character vector as input; the default is `NULL`, in which case no legend text is added. |
| `bar.qmd:266` | 2, 9 | A grouped bar plot represents the same data as the stacked bar plot but instead of being stacked, the bars are now grouped and placed besides each other. | A grouped bar plot represents the same data as the stacked bar plot, but the bars are grouped and placed beside each other instead of stacked. |
| `bar.qmd:275` | 1, 2, 9 | The `beside` argument in `barplot()` function is set to `TRUE` to build grouped bar plots. It takes logical values as inputs and the default values is FALSE. As you can observe from the plot, the bars are placed besides each other instead of being stacked. | Set the `beside` argument in the `barplot()` function to `TRUE` to build grouped bar plots. It takes logical values as input, and the default is FALSE. As you can observe from the plot, the bars are placed beside each other instead of being stacked. |

Refusals: The eight boxed examples and their `barplot()` calls are untouched. "Let us quickly revise what we have
learnt…" keeps "learnt" (protected trait). The color-recycling paragraphs (120 and 142) are exact duplicates of
each other and both stay: they belong to two parallel sections (bar color, border color), so the pair is
deliberate, not an accidental repeat. The bivariate table paragraph keeps its explanation of rows and columns after
the chunk.

## Box Plots

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `box.qmd:21` | 3, 6, 8 | The box plot is a standardized way of displaying the distribution of data based on the five number summary: minimum, first quartile, median, third quartile, and maximum. Box plots are useful for detecting outliers and for comparing distributions. It shows the shape, central tendency and variability of the data. | A box plot is a standardized way of displaying the distribution of data based on the five-number summary: minimum, first quartile, median, third quartile and maximum. Box plots are useful for detecting outliers and for comparing distributions, and they show the shape, central tendency and variability of the data. |
| `box.qmd:25` | 8, 9 | A boxplot splits the data set into quartiles. The body of the boxplot consists of a "box" (hence, the name), which goes from the first quartile (Q1) to the third quartile (Q3). Within the box, a vertical line is drawn at the Q2, the median of the data set. | A box plot splits the data set into quartiles. The body of the box plot consists of a "box" (hence the name), which goes from the first quartile (Q1) to the third quartile (Q3). Within the box, a vertical line is drawn at Q2, the median of the data set. |
| `box.qmd:47` | 8 | Let us add some color to the boxplot. | Let us add some color to the box plot. |
| `box.qmd:55` | 9 | We can specify a separate color for the border of the box in the boxplot. | We can specify a separate color for the border of the box. |
| `box.qmd:63` | 3, 2 | If range is positive, the whiskers extend to the most extreme data point which is no more than range times the interquartile range from the box. A value of zero causes the whiskers to extend to the data extremes. | If range is positive, the whiskers extend to the most extreme data point that is no more than range times the interquartile range from the box. A value of zero makes the whiskers extend to the data extremes. |
| `box.qmd:92` | 9 | The default value is `TRUE`. | The default is `TRUE`. |
| `box.qmd:113` | 8, 3 | the boxes are drawn with widths proportional to the square-roots of the number of observations in the groups. | the boxes are drawn with widths proportional to the square root of the number of observations in each group. |
| `box.qmd:131` | 4 (§3a.3), 9, 13 | Let us use the `mtcars` data set and compare the distribution of Miles Per Gallon (`mpg`) for automobiles with different number of cylinders (`cyl`). We will do this by specifying a formula as shown in the below example. | Let us use the `mtcars` data set and compare the distribution of Miles Per Gallon (`mpg`) for automobiles with different numbers of cylinders (`cyl`), specifying a formula as shown in the example below. |
| `box.qmd:137` | 3, 9, 4 | We use the formula when we are comparing the distribution of a continuous variable across different levels of a categorical variable. If we want to compare the distributions without using a categorical variable, we need to specify the variable separately in the `boxplot()` function. Below is an illustration of this method. We will split the `mpg` data using the `split()` function and plot them separately. The `split()` function splits a continuous variable based on the levels of a categorical variable. | We use the formula when we compare the distribution of a continuous variable across the levels of a categorical variable. To compare the distributions without a categorical variable, we specify the variables separately in the `boxplot()` function. Below is an illustration of this method: we split the `mpg` data using the `split()` function and plot the parts separately. `split()` splits a continuous variable based on the levels of a categorical variable. |
| `box.qmd:151` | 3, 9 | If you are comparing the distribution of a continuous variable for the different levels of a categorical variable, use the formula. If you are comparing distribution of independent variables, specify all the variables in the `boxplot()` function. | If you are comparing the distribution of a continuous variable across the levels of a categorical variable, use the formula. If you are comparing the distributions of independent variables, specify all the variables in the `boxplot()` function. |
| `box.qmd:155` | 9, 4 | We can specify as many colors as the boxes or we can specify the same color for all of them. Below are two examples where we specify the same color in the first one and different colors in the second one. | We can specify as many colors as there are boxes, or the same color for all of them. Below are two examples: the same color in the first, different colors in the second. |
| `box.qmd:172` | 9 | A notch is drawn in each side of the boxes and if the notches of the plots do not overlap, it is strong evidence that the medians differ. | A notch is drawn in each side of the boxes, and if the notches do not overlap, it is strong evidence that the medians differ. |

Refusals: "Let us conclude by adding a title and axis labels to the box plot." stays as his hand-off. The five-number
summary is a domain definition, so only its punctuation changed. The `hsb` provenance sentence keeps its numbers
and the UCLA credit. The `varwidth` gallery and the two-column figure are protected.

## Histograms

| file:line | principle | before | after |
| :-- | :-- | :-- | :-- |
| `hist.qmd:17` | 2, 9 | A histogram is a plot that can be used to examine the shape and spread of continuous data. | A histogram examines the shape and spread of continuous data. |
| `hist.qmd:25` | 1, 2, 3 | To construct a histogram, the data is split into intervals called bins. The intervals may or may not be equal sized. For each bin, the number of data points that fall into it are counted (frequency). The Y axis of the histogram represents the frequency and the X axis represents the variable. | To construct a histogram, we split the data into intervals called bins. The intervals may or may not be equal sized. For each bin, we count the number of data points that fall into it (frequency). The Y axis of the histogram represents the frequency, and the X axis represents the variable. |
| `hist.qmd:51` | 1, 4 | Histograms are created using the `hist()` function in R. The minimum input required to create a bare bones histogram is a continuous variable. Below is an example: | We create histograms using the `hist()` function in R. The minimum input required for a bare bones histogram is a continuous variable: |
| `hist.qmd:57` | 3, 1, 9 | The `hist()` functions returns details of the histogram which can be accessed by assigning the histogram to a variable. Let us assign the above histogram to a variable `h` and use the `$` symbol to access the details stored in the variable. | The `hist()` function returns details of the histogram, which we can access by assigning the histogram to a variable. Let us assign the above histogram to a variable `h` and use the `$` symbol to access the details stored in it. |
| `hist.qmd:93` | 4 (§3a.3), 9 | The below plot displays histograms with different number of bins: | The plot below displays histograms with a different number of bins: |
| `hist.qmd:111` | 2 | If we want to create histograms with specific intervals, the `breaks` argument can be supplied with the intervals. | To create histograms with specific intervals, supply the intervals to the `breaks` argument. |
| `hist.qmd:117` | 3 | If you observe the Y axis, it does not represent frequency any more. | If you observe the Y axis, it no longer represents frequency. |
| `hist.qmd:135` | 3, 2 | When multiplied by the class width, the product will always sum upto 1. | When multiplied by the class width, the product always sums to 1. |
| `hist.qmd:141` | 9, 3 | Before we end this section, we need to learn about one more way to specify the intervals of the histogram, algorithms. | Before we end this section, we need one more way to specify the intervals of the histogram: algorithms. |
| `hist.qmd:147` | 4 (§3a.3) | In the below plot, we examine how th algorithms work: | In the plot below, we examine how the algorithms work: |
| `hist.qmd:175` | 1, 2, 9 | The same result can be achieved by using the `probability` argument as well. It takes only logical values as inputs and the default is `FALSE`. If set to `TRUE`, the Y axis will represent the frequency density instead of counts. | We can achieve the same result with the `probability` argument. It takes only logical values as input, and the default is `FALSE`. If set to `TRUE`, the Y axis represents the frequency density instead of counts. |
| `hist.qmd:183` | 3, 9 | If the number of colors specified is less than the number of bars, the colors are recycled. | If we specify fewer colors than there are bars, the colors are recycled. |
| `hist.qmd:208` | 9 | Colors can be specified for the borders of the histogrambars using the `border` argument. | Colors can be specified for the borders of the histogram bars using the `border` argument. |
| `hist.qmd:225` | 9, 3, 2 | In certain cases, we might want to add the frequency counts on the histogram bars. It is easier for the user to know the frequencies of each bin when they are present on top of the bars. Let us add the frequency counts on top of the bars using the `labels` argument. We can either set it to `TRUE` or a character vector containing the label values. Let us look at both the methods. | In certain cases, we might want to add the frequency counts on the histogram bars; it is easier for the reader to know the frequency of each bin when it appears on top of the bar. Let us add the counts using the `labels` argument. We can either set it to `TRUE` or supply a character vector of label values. Let us look at both methods. |

Refusals: The frequency-density formulas, the `breaks` values and the `rbeta()` seeds are `numbers, data and code`
and are untouched. "What is frequency density?" stays, as his question before the definition. The `hist()` gallery
and the figure captions are protected. The two "Different Colors" headings and their chunks stay.
