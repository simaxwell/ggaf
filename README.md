# ggGSS

<!-- badges: start -->

<!-- badges: end -->

`ggGSS` is an R package for applying the [UK Government Analysis Function](https://analysisfunction.civilservice.gov.uk/) and [Government Statistical Service](https://analysisfunction.civilservice.gov.uk/government-statistical-service-and-statistician-group/) (GSS) good practice guidance to data visualisations created with `ggplot2`.

Note: the package is **in development.**

## Installation

You can install `ggGSS` with:

``` r
install.packages("devtools")
devtools::install_github("simaxwell/ggGSS")
```

## Functions

### `theme_gss()`

A `ggplot2` theme based on Government Analysis Function (AF) good practice guidance for [data visualisation](https://analysisfunction.civilservice.gov.uk/policy-store/data-visualisation-charts/).

### `scale_colour_gss_d()` & `scale_fill_gss_d()`

Create a discrete colour scale using the AF/GSS palette. Colours for the Forestry Commission (FC) and UK Health Security Agency (UKHSA) are also available.

### `scale_x_gss_c()` & `scale_y_gss_c()`

Wrapper functions which modify the default scale for continuous x and y aesthetics.

## Example

``` r
library(ggplot2)
library(ggGSS)

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

# Include AF/GSS recommended formatting and theme:
p +
  scale_y_gss_c() +
  theme_gss()

# Include AF/GSS colour palette:
p +
  scale_fill_gss_d()
```
