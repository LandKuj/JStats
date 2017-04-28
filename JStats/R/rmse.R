#' Root Mean Square Error
#'
#'@return Gives root mean square error for a given model
#'
#' @examples 
#' rmse(actuals, predicted)
#' @export
rmse <- function(actual, predicted) { 
  return(sqrt(
    sum( (actual-predicted)^2 ) / length(actual)
  ))
}
  
