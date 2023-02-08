#' @title GSS-style scale functions (fill) for ggplot2
#'
#' @description Create a discrete ggplot2 fill scale function for the GSS colour palette.
#'
#' @param palette The palette name: either GSS (default) or FC.
#' @param direction Sets the order of colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed. For FC palette only.
#' @param ... Parameters to \code{\link[ggplot2]{discrete_scale}}.
#'
#' @author Si Maxwell \email{simon.maxwell@@forestresearch.gov.uk}
#'
#' @importFrom ggplot2 discrete_scale
#' @importFrom ggplot2 scale_x_continuous
#' @importFrom ggplot2 expansion
#'
#' @return Returns a ggplot2 scale function.
#' @export
#'
#' @examples
#' ggplot2::discrete_scale("fill", "gss", generate_palette("gss"))
scale_fill_gss_d <- function(palette = "gss", direction = 1, ...) {

  ggplot2::discrete_scale(
    "fill", "gss",
    generate_palette(palette, direction),
    ...
  )
}

#' @title GSS-style scale functions (colour) for ggplot2
#'
#' @description Create a discrete ggplot2 colour scale function for the GSS colour palette.
#'
#' @param palette The palette name: either GSS (default) or FC.
#' @param direction Sets the order of colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed. For FC palette only.
#' @param ... Parameters to \code{\link[ggplot2]{discrete_scale}}.
#'
#' @author Si Maxwell \email{simon.maxwell@@forestresearch.gov.uk}
#'
#' @return Returns a discrete ggplot2 scale function.
#' @export
#'
#' @examples
#' ggplot2::discrete_scale("colour", "gss", generate_palette("gss"))
scale_colour_gss_d <- function(palette = "gss", direction = 1, ...) {

  ggplot2::discrete_scale(
    "colour", "gss",
    generate_palette(palette, direction),
    ...
  )
}
