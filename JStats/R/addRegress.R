#' addRegress
#' 
#' Adds a regression line following a plot with a given formula
#' 
#' @author Jordan Landgrebe
#' @param d data 
#' @param dependant name of dependant variable
#' @param predict name of prediction variable
#' @examples
#' addRegress(d, f)

addRegress <- function(d, dependant, predict) {
  abline(lm(d[,dependant] ~ d[,predict]))
  
}
