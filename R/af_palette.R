#' @title Analysis Function (AF) palette
#'
#' @description Returns name and hex code for Government Analysis Function (AF) colours.
#' Calling the function with no arguments returns all colours.
#' If an integer (n) is passed to the function the nth colour is returned.
#' If the name(s) of specific colours are passed to the function, the name and hex
#' code of those colours are returned.
#'
#' @details See \link[AF data visualisation colour guidance]{https://analysisfunction.civilservice.gov.uk/policy-store/data-visualisation-colours-in-charts/}
#'
#' @param ... Integer or colour name(s) as character strings.
#' Eight colours are available:
#' \itemize{
#' \item dark_blue
#' \item turquoise
#' \item dark_pink
#' \item orange
#' \item dark_grey
#' \item light_purple
#' \item red
#' \item gold
#' }
#'
#' @return Returns a named character vector.
#' @export
#'
#' @examples
#' af_palette(1)
af_palette <- function(...) {

  af_cols <- c(
    `dark_blue`    = "#12436D",
    `turquoise`    = "#28A197",
    `dark_pink`    = "#801650",
    `orange`       = "#F46A25",
    `dark_grey`    = "#3D3D3D",
    `light_purple` = "#A285D1",
    `red`          = "#8C0000",
    `gold`         = "#B78C01"
  )

  cols <- c(...)

  if (is.null(cols))
    return (af_cols)

  af_cols[cols]

}
