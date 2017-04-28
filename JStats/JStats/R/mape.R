#' Mean Absolute Percent Error
#'
#'@return Give mean absolute percent error for a given model
#'
#' @examples 
#' mape(actuals, predicted)
#' @export
mape <- function(actual, predicted) {
  return (
    sum(abs((actual - predicted) / actual)) * 
    (100 / length(actual))
  )
}
  
