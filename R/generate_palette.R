#' @title Generate palette
#'
#' @param palette A character string indicating the colour palette to use:
#' \itemize{
#' \item "AF" (or "af")
#' \item "FC" (or "fc")
#' }
#' @param direction For FC palette only: sets the order of the colours. If 1 (the default) colours are as output by fc_palette. If -1, the order of colours is reversed.
#'
#' @return A function.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @examples
#' ggplot2::discrete_scale("fill", "af", generate_palette)
generate_palette <- function(palette = "AF", direction = 1) {

  palette <- tolower(palette)

  function(n) {

    if(n > length(palette_selector(palette)))
      warning("There aren't enough colours in this palette!.")

    else {

      all_cols <- palette_selector(palette)

      all_cols <- unname(unlist(all_cols))

      # No option to change colour order for AF palette:
      all_cols <- if(palette == "af") {

        all_cols

      } else if(palette == "fc") {

        all_cols <- if(direction >= 1) all_cols else rev(all_cols)

      }

    }

    colour_list <- all_cols[1:n]

  }
}
