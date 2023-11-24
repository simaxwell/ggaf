#' GSS formatted position scale for continuous data (x)
#'
#' This is a wrapper function for `scale_x_continuous()`, the default scale for continuous x aesthetics. It takes all standard arguments from `scale_x_continuous()` except for `expand` which is set to remove the space between the data and the axes (`expand = expansion(mult = c(0, upper))`).
#'
#' This function is in development.
#'
#' @param ... Parameters passed to \code{\link[ggplot2]{scale_x_continuous}}
#' @param upper vector for upper multiplicative range expansion factor. The upper limit is expanded by this factor.
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @return Returns a continuous ggplot2 position scale function.
#' @export
#'
#' @examples
#' set.seed(1)
#' df <- data.frame(x = seq(1, 10, 1),
#' y = abs(rnorm(10) * 10))
#'
#' library(ggplot2)
#' p1 <- ggplot(df, aes(x, y)) +
#' geom_col()
#'
#' p1 +
#' scale_x_gss_c()
scale_x_gss_c <- function(..., upper = 0) {

  ggplot2::scale_x_continuous(...,
                              expand = ggplot2::expansion(mult = c(0, upper)))

}

#' GSS formatted position scale for continuous data (y)
#'
#' This is a wrapper function for `scale_y_continuous()`, the default scale for continuous x aesthetics. It takes all standard arguments from `scale_y_continuous()` except for `expand` which is set to remove the space between the data and the axes (`expand = expansion(mult = c(0, upper))`).
#'
#' This function is in development.
#'
#' @param ... Parameters passed to \code{\link[ggplot2]{scale_x_continuous}}
#' @param upper vector for upper multiplicative range expansion factor. The upper limit is expanded by this factor.
#'
#' @author Si Maxwell \email{simon.maxwell@@ukhsa.gov.uk}
#'
#' @return Returns a continuous ggplot2 position scale function.
#' @export
#'
#' @examples
#' set.seed(2)
#' df <- data.frame(x = seq(1, 10, 1),
#' y = abs(rnorm(10) * 10))
#'
#' library(ggplot2)
#' p2 <- ggplot(df, aes(x, y)) +
#' geom_col()
#'
#' p2 +
#' scale_y_gss_c()
scale_y_gss_c <- function(..., upper = 0) {

  ggplot2::scale_y_continuous(...,
                              expand = ggplot2::expansion(mult = c(0, upper)))

}
