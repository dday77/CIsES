#' Case Study: Air Pollution Data
#'
#' The data contains pollution measurements from the town of Libby,
#' Montana on samples of winter days for two years after replacing
#' every old wood stove model with newer, cleaner-burning models.
#' Each pollutant was measured in micrograms per cubic meter of
#' air.
#'
#' @docType data
#'
#' @usage data(Air_Pollution)
#'
#' @format A data frame with 20 rows and 8 variables:
#'  \describe{
#'      \item{PM_Y1}{The particulate matter measure in year one.}
#'      \item{OC_Y1}{The organic carbon measure in year one. This
#'      is carbon bound in organic molecules.}
#'      \item{TC_Y1}{The total carbon measure in year one.}
#'      \item{LE_Y1}{The levoglucosan measure in year one. This is
#'      a compound found in charcoal and is thus an indicator of
#'      the amount of wood smoke in the atmosphere.}
#'      \item{PM_Y2}{The particulate matter measure in year two.}
#'      \item{OC_Y2}{The organic carbon measure in year two.}
#'      \item{TC_Y2}{The total carbon measure in year two.}
#'      \item{LE_Y2}{The levoglucosan measure in year two.}
#'       }
#'
#' @keywords datasets
#'
#' @source {Elementary Statistics 4th Edition by Navidi/Monk}
#'
#' @examples
#' data(Air_Pollution)
#' boxplot(Air_Pollution)
#' tint(Air_Pollution$PM_Y1,CL=.98)
"Air_Pollution"
