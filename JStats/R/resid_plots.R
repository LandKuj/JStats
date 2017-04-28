#' Resid Plots
#'
#'@return gives plots for residuals
#'
#' @examples 
#'
#' @export
resid_plots <- function(model, data, actuals) {
  model_summary <- summary(model)
  predicted_values <- predict(model, data)
  plot(predicted_values, model_summary$residuals, 
       xlab=paste("Predicted", substitute(model)), 
       ylab=paste("Residuals", substitute(model)))
  
  plot(predicted_values, data[,actuals], 
       xlab=paste("Predicted", substitute(model)), 
       ylab=paste("Residuals", substitute(model)))
}
