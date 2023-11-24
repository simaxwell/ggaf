#' @title Government Statistical Service (GSS) ggplot2 theme
#'
#' @description A GSS style ggplot2 theme
#'
#' @details See \link[UK Government Analysis Function chart guidance]{https://analysisfunction.civilservice.gov.uk/policy-store/data-visualisation-charts/} for more information.
#'
#' @param font_size Font size in pt
#' @param font_family Font family
#' @param grid Add x- or y-axis grid
#' @param tick_mark Whether to add tick marks
#' @param ... Parameters passed to \code{\link[ggplot2]{theme}}
#'
#' @return Returns a ggplot2 theme function.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @importFrom ggplot2 element_blank
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 margin
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 theme_grey
#'
#' @examples
#' set.seed(3)
#' df <- data.frame(x = seq(1, 10, 1),
#' y = abs(rnorm(10) * 10))
#'
#' library(ggplot2)
#' p3 <- ggplot(df, aes(x, y)) +
#' geom_col()
#'
#' p3 +
#' scale_y_gss_c() +
#' theme_gss()
theme_gss <- function(font_size = 12, font_family = NULL, grid = "y", tick_mark = NULL, ...){

  # Base theme:
  theme <- theme_grey(base_size = font_size) +

    # Suppress the y-axis label. Re-assign y-axis label to subtitle:
    #

    # GSS chart style:
    theme(

      # Pass in the dots:
      ...,

      # Panel:
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),

      # Global font size:
      text = ggplot2::element_text(size = font_size),

      # Title:
      plot.title.position = "plot", # applied to subtitle too.

      # Sub-title (y-axis label):
      plot.subtitle = ggplot2::element_text(
        family = font_family,
        size = font_size,
        margin = ggplot2::margin(b = 10)),

      # ...and my axe(s):
      axis.title = ggplot2::element_text(
        family = font_family,
        size = font_size,
        colour = "#000000"
      ),

      axis.text = ggplot2::element_text(
        family = font_family,
        size = font_size,
        colour = "#000000"
      ),

      # Legend:
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(family = font_family,
                                          size = font_size,
                                          colour = "#000000"),

      # Caption:
      plot.caption.position = "plot",
      plot.caption = ggplot2::element_text(family = font_family,
                                           size = font_size,
                                           colour = "#000000"),

      # Facets:
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(family = font_family,
                                         size = font_size,
                                         hjust = 0), # Don't want bold face

    )

  #
  if (inherits(grid, "character")) {

    grid <- tolower(grid)

    if (regexpr("x", grid)[1] > 0) theme <- theme + theme(panel.grid.minor = ggplot2::element_blank(),
                                                          panel.grid.major.x = ggplot2::element_line(colour = "#D9D9D9"),
                                                          panel.grid.major.y = ggplot2::element_blank(),
                                                          axis.line.x = ggplot2::element_blank(),
                                                          axis.line.y = ggplot2::element_line(colour = "#D9D9D9"))

    if (regexpr("y", grid)[1] > 0) theme <- theme + theme(panel.grid.minor = ggplot2::element_blank(),
                                                          panel.grid.major.x = ggplot2::element_blank(),
                                                          panel.grid.major.y = ggplot2::element_line(colour = "#D9D9D9"),
                                                          axis.line.x = ggplot2::element_line(colour = "#D9D9D9"),
                                                          axis.line.y = ggplot2::element_blank())

    if (regexpr("xy", grid)[1] > 0) theme <- theme + theme(panel.grid.minor = ggplot2::element_blank(),
                                                           panel.grid.major.x = ggplot2::element_line(colour = "#D9D9D9"),
                                                           panel.grid.major.y = ggplot2::element_line(colour = "#D9D9D9"),
                                                           axis.line.x = ggplot2::element_line(colour = "#D9D9D9"),
                                                           axis.line.y = ggplot2::element_line(colour = "#D9D9D9"))

  } else {

    theme <- theme + theme(panel.grid = ggplot2::element_blank())

  }

  if (inherits(tick_mark, "character")) {

    tick_mark <- tolower(tick_mark)

    if(grepl("x", tick_mark)) {

      theme <- theme + theme(axis.ticks.x = ggplot2::element_line(colour = "#D9D9D9"))
      theme <- theme + theme(axis.ticks.y = ggplot2::element_blank())

    }

    if(grepl("y", tick_mark)) {

      theme <- theme + theme(axis.ticks.x = ggplot2::element_blank())
      theme <- theme + theme(axis.ticks.y = ggplot2::element_line(colour = "#D9D9D9"))

    }

    if(grepl("xy", tick_mark)) {

      theme <- theme + theme(axis.ticks.x = ggplot2::element_line(colour = "#D9D9D9"))
      theme <- theme + theme(axis.ticks.y = ggplot2::element_line(colour = "#D9D9D9"))

    }

  } else {

    theme <- theme + theme(axis.ticks.x = ggplot2::element_blank())
    theme <- theme + theme(axis.ticks.y = ggplot2::element_blank())

  }

  theme

}
