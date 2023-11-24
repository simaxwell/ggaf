#' UK Health Security Agency (UKHSA) palette
#'
#' @description Returns name and hex code for UK Health Security Agency (UKHSA) colours.
#' Calling the function with no arguments returns all colours.
#' If an integer (n) is passed to the function the nth colour is returned.
#' If the name(s) of specific colours are passed to the function, the name and hex code of those colours are returned.
#'
#' @details See UKHSA brand guidance.
#'
#' @param ... Integer or colour name(s) as character strings.
#' Six colours are available:
#' \itemize{
#' \item teal
#' \item midnight
#' \item plum
#' \item moonlight
#' \item wine
#' \item cherry
#' }
#'
#' @return Returns a named character vector.
#' @export
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @examples
#' ukhsa_palette(1)
ukhsa_palette <- function(...) {

  ukhsa_cols <- c(
    `teal`         = "#007C91",
    `midnight`     = "#003B5C",
    `plum`         = "#582C83",
    `moonlight`    = "#1D57A5",
    `wine`         = "#8A1B61",
    `cherry`       = "#E40046"
  )

  cols <- c(...)

  if (is.null(cols))
    return (ukhsa_cols)

  ukhsa_cols[cols]

}
