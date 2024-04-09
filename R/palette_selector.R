#' @title Palette selector
#'
#' @description Select the palette of interest: AF (default) or FC
#'
#' @param palette A character string indicating the colour palette to use:
#' \itemize{
#' \item "AF" (or "af")
#' \item "FC" (or "fc")
#' }
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @return Returns a named character vector.
#' @export
#'
#' @examples
#' palette_selector(palette = "AF")
palette_selector <- function(palette = "AF") {

  # Convert specified palette to lower case:
  palette <- tolower(palette)

  # Combine AF and FC palette into list:
  palette_list <- list(

    `af` = af_palette(),

    `fc` = fc_palette()

  )

  # Select specified palette from list:
  palette_list[[palette]]

}
