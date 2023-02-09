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

### `scale_colour_gss()` & `scale_fill_gss()`

Create a discrete colour scale using the AF/GSS palette.

### `scale_x_gss_c()` & `scale_y_gss_c()`

Wrapper functions which modify the default scales for continuous x and y aesthetics.

## Example

``` r
library(ggplot2)
library(ggGSS)
set.seed(3)
df <- data.frame(
  x = seq(1, 10, 1),
  y = abs(rnorm(10) * 10)
)

p <- ggplot(df, aes(x, y)) +
  geom_col()

p +
  scale_y_gss_c() +
  theme_gss()
```
