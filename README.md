# ggaf

<!-- badges: start -->

<!-- badges: end -->

`ggaf` is an R package for applying the [UK Government Analysis Function](https://analysisfunction.civilservice.gov.uk/) good practice guidance to data visualisations created with `ggplot2`.

Note: the package is **in development.**

## Installation

You can install `ggaf` with:

``` r
install.packages("devtools")
devtools::install_github("simaxwell/ggaf")
```

## Functions

### `theme_af()`

A `ggplot2` theme based on Government Analysis Function (AF) good practice guidance for [data visualisation](https://analysisfunction.civilservice.gov.uk/policy-store/data-visualisation-charts/).

### `scale_colour_af_d()` & `scale_fill_af_d()`

Create a discrete colour scale using the AF palette.

### `scale_x_af_c()` & `scale_y_af_c()`

Wrapper functions which modify the default scale for continuous x and y aesthetics.

## Example

``` r
library(ggplot2)
library(ggaf)

set.seed(7)

# Create dummy data set:
df <- expand.grid(
  x = seq(1, 5, 1),
  y = letters[1:2]
)

df$z <- abs(rnorm(10) * 10)

# Produce standard ggplot2 figure:
p <- ggplot(df, aes(x, z, fill = y)) +
  geom_col()

# Include Analysis Function recommended formatting and theme:
p +
  scale_y_af_c() +
  theme_af()

# Include Analysis Function discrete colour palette:
p +
  scale_fill_af_d()
```
