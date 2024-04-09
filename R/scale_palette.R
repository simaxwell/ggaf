#' @title AF-style scale functions (fill) for ggplot2
#'
#' @description Create a discrete ggplot2 fill scale function for the AF colour palette.
#'
#' @param palette The palette name: either AF (default) or FC
#' @param direction For FC palette only: sets the order of the colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed.
#' @param ... Parameters to \code{\link[ggplot2]{discrete_scale}}.
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_x_continuous
#' @importFrom ggplot2 expansion
#'
#' @return Returns a ggplot2 scale function.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @examples
#' ggplot2::discrete_scale("fill", "af", generate_palette("af"))
scale_fill_af_d <- function(palette = "af", direction = 1, ...) {

  ggplot2::discrete_scale(
    "fill", "af",
    generate_palette(palette, direction),
    ...
  )
}

#' @title AF-style scale functions (colour) for ggplot2
#'
#' @description Create a discrete ggplot2 colour scale function for the AF colour palette.
#'
#' @param palette The palette name: either AF (default) or FC.
#' @param direction For FC palette only: sets the order of the colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed.
#' @param ... Parameters to \code{\link[ggplot2]{discrete_scale}}.
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @return Returns a discrete ggplot2 scale function.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @examples
#' ggplot2::discrete_scale("colour", "af", generate_palette("af"))
scale_colour_af_d <- function(palette = "af", direction = 1, ...) {

  ggplot2::discrete_scale(
    "colour", "af",
    generate_palette(palette, direction),
    ...
  )
}
