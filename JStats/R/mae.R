#' Mean Absolute Error (MAE)
#' 
#' Calculates the mean absolute error of a prediction set
#' 
#' @author Jordan Landgrebe
#' @param actuals A vector of actual observations
#' @param predicted A vector of predicted observations
#' @examples 
#' mae(data.frame$actual, data.frame$predicted)
mae <- function(actual, predicted) {
  if(length(actual) != length(predicted)) {
    stop("Length of inputs must equate!\n")
  }
  return(
    sum( abs(predicted - actual)) / length(actual)
  )
}