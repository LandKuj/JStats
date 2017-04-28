#' Provides binary predictions for a model
#'
#'@return Gives 0, 1 predictions based on model and cutoff value
#'
#' @examples 
#' binary_predict(model, data, 0.5)
#' @export
binary_predict <- function(model, data, cutoff = 0.5, codes= c(0, 1)) {
  predictions <- predict(model, data, type="response")
  predictions <- ifelse(predictions < cutoff, codes[1], codes[2])
  return(predictions)
}
