#' @title Forestry Commission (FC) palette
#'
#' @description Returns name and hex code for Forestry Commission (FC) green colours.
#' Calling the function with no arguments returns both colours.
#' If an integer (n) is passed to the function the nth colour is returned.
#' If the name(s) of specific colours are passed to the function, the name and hex
#' code of those colours are returned.
#'
#' There are two colours in the FC palette: the lighter "broadleaf_green" and
#' the darker "conifer_green".
#'
#' @details See \link[Forestry Commission]{https://www.gov.uk/government/organisations/forestry-commission} for the colours in action.
#'
#' @param ... Integer or colour name(s) as character strings.
#' Two colours are available:
#' \itemize{
#' \item broadleaf_green
#' \item conifer_green
#' }
#'
#' @return Returns a named character vector.
#' @export
#'
#' @examples
#' fc_palette(1)
fc_palette <- function(...) {

  fc_cols <- c(
    `broadleaf_green` = "#64A70B", # Pantone 369
    `conifer_green`   = "#046A38" # Pantone 349
  )

  cols <- c(...)

  if (is.null(cols))
    return (fc_cols)

  fc_cols[cols]

}
