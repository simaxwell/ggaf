#' @title Palette selector
#'
#' @description Select the palette of interest: GSS (default) or FC
#'
#' @param palette A character string indicating the colour palette to use:
#' \itemize{
#' \item "GSS" (or "gss")
#' \item "FC" (or "fc")
#' \item "UKHSA" (or "ukhsa")
#' }
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @return Returns a named character vector.
#' @export
#'
#' @examples
#' palette_selector(palette = "GSS")
palette_selector <- function(palette = "GSS") {

  #
  palette <- tolower(palette)

  #
  palette_list <- list(

    `gss` = gss_palette(),

    `fc` = fc_palette(),

    `ukhsa` = ukhsa_palette()

  )

  #
  palette_list[[palette]]

}
