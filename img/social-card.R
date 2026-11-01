# Social share card for the book (Open Graph / Twitter summary_large_image).
#
# Draws a 1200x630 PNG: white ground, the book title in bold dark ink, a
# one-line subtitle taken from `book: description` in _quarto.yml, the book
# cover on the right third, a brand-blue accent and the site address.
#
# Run from the project root:
#   Rscript img/social-card.R
#
# Requires ggplot2, ragg and png; writes img/social-card.png.

library(ggplot2)
library(ragg)
library(png)

W <- 1200
H <- 630

ink <- "#0f172a"
muted <- "#475569"
blue <- "#2563eb"
hairline <- "#e2e8f0"

# ggplot2 sizes text in millimetres and the device is 72 dpi, so one pixel of
# font size is one point on the canvas.
mm <- function(px) px / ggplot2::.pt

# Top-down y -> ggplot y (origin at the bottom).
y <- function(px_from_top) H - px_from_top

cover_path <- "img/viz-base.png"
stopifnot(file.exists(cover_path))
cover <- readPNG(cover_path)

cover_w <- 280
cover_h <- cover_w * nrow(cover) / ncol(cover)
cover_right <- W - 80
cover_left <- cover_right - cover_w
cover_bottom <- (H - cover_h) / 2
cover_top <- cover_bottom + cover_h

p <- ggplot() +
  coord_cartesian(xlim = c(0, W), ylim = c(0, H), expand = FALSE, clip = "off") +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "white", colour = NA),
    plot.margin = margin(0, 0, 0, 0)
  ) +
  # Brand accent.
  annotate(
    "rect",
    xmin = 80, xmax = 184, ymin = y(100), ymax = y(88),
    fill = blue, colour = NA
  ) +
  annotate(
    "text",
    x = 80, y = y(128), label = "BASE GRAPHICS",
    hjust = 0, vjust = 1,
    size = mm(22), fontface = "bold", colour = blue, family = "sans"
  ) +
  annotate(
    "text",
    x = 80, y = y(176), label = "Data Visualization",
    hjust = 0, vjust = 1,
    size = mm(72), fontface = "bold", colour = ink, family = "sans"
  ) +
  annotate(
    "text",
    x = 80, y = y(262), label = "with R",
    hjust = 0, vjust = 1,
    size = mm(72), fontface = "bold", colour = ink, family = "sans"
  ) +
  annotate(
    "text",
    x = 80, y = y(384),
    label = "Zero-dependency, publication-ready base R graphics",
    hjust = 0, vjust = 1,
    size = mm(28), colour = muted, family = "sans"
  ) +
  annotate(
    "text",
    x = 80, y = y(438), label = "Aravind Hebbali",
    hjust = 0, vjust = 1,
    size = mm(26), colour = muted, family = "sans"
  ) +
  annotate(
    "text",
    x = 80, y = y(552), label = "rsquaredacademy.com",
    hjust = 0, vjust = 1,
    size = mm(24), colour = muted, family = "sans"
  ) +
  # Book cover, right third, with a hairline border.
  annotate(
    "rect",
    xmin = cover_left - 1, xmax = cover_right + 1,
    ymin = cover_bottom - 1, ymax = cover_top + 1,
    fill = NA, colour = hairline, linewidth = 0.8
  ) +
  annotation_raster(
    cover,
    xmin = cover_left, xmax = cover_right,
    ymin = cover_bottom, ymax = cover_top,
    interpolate = TRUE
  )

agg_png(
  "img/social-card.png",
  width = W, height = H, units = "px",
  background = "white"
)
print(p)
invisible(dev.off())

cat("wrote img/social-card.png\n")
