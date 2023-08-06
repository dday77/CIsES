#' NFL Weights Data
#'
#' Contains the weights of 52 randomly selected NFL
#' football players. This data set appears in Chapter 8,
#' section 8.5 problem 13.
#'
#' @docType data
#'
#' @usage data(Nfl_Weights)
#'
#' @format A data frame with 52 rows and 1 variable:
#'  \describe{
#'      \item{Weights}{the weights of the football players
#'       measured in pounds.}
#'       }
#'
#' @keywords datasets
#'
#' @source {Chicago Tribune}
#'
#' @examples
#' data(Nfl_Weights)
#' mean(Nfl_Weights$Weights)
#'
#' data(Nfl_Weights)
#' tint(x = Nfl_Weights$Weights, CL=0.9)
"Nfl_Weights"
