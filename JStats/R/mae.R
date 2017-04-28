#' Mean Absolute Error
#'
#'@return Give mean absolute error for a given model
#'
#' @examples 
#' mae(actuals, predicted)
#' @export
mae <- function(actual, predicted) {
  return (sum(abs(actual-predicted)) / 
      length(actual)
  )
}
  
