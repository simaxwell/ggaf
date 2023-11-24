#' @title Generate palette
#'
#' @param palette A character string indicating the colour palette to use:
#' \itemize{
#' \item "GSS" (or "gss")
#' \item "FC" (or "fc")
#' \item "UKHSA" (or "ukhsa")
#' }
#' @param direction For FC palette only: sets the order of the colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed.
#'
#' @return A function.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @examples
#' ggplot2::discrete_scale("fill", "gss", generate_palette)
generate_palette <- function(palette = "GSS", direction = 1) {

  palette <- tolower(palette)

  function(n) {

    if(n > length(palette_selector(palette)))
      warning("There aren't enough colours in this palette!.")

    else {

      all_cols <- palette_selector(palette)

      all_cols <- unname(unlist(all_cols))

      # No option to change colour order for GSS palette:
      all_cols <- if(palette == "gss" | palette == "ukhsa") {

        all_cols

      } else if(palette == "fc") {

        all_cols <- if(direction >= 1) all_cols else rev(all_cols)

      }

    }

    colour_list <- all_cols[1:n]

  }
}
