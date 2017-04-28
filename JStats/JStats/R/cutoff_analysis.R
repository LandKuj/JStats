#' Cutoff Analysis for binary predictions
#'
#'@return test various cutoff values and provides performance measures
#'
#' @examples 
#' cutoff_analysis(model, data, actual)
#' @export
cutoff_analysis <- function(model, data, actuals, dif=0.1) {
  print(c("Cutoff","Accuracy","Sensitivity","Specificity"))
  while(dif < 1) {
    t <- table(actuals, binary_predict(model, data, dif))
    try (
      print(c(dif, accuracy(t), sensitivity(t), specificity(t))),
      silent=TRUE
    )
    dif = dif + 0.1
  }
}