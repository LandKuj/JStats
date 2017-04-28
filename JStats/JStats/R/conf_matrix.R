#' Confusion Matrix
#'
#'@return takes predicted and actual values, provides basic statistics
#'
#' @examples 
#' conf_matrix(actual, predicted)
#' @export
conf_matrix <- function(actual, predicted) {
  conf_table <- table(actual, predicted)
  print(conf_table)
  accuracy <- round(100 * (conf_table[1,1] + conf_table[2,2])/sum(conf_table), 3)
  sensitivity <- round(100 * (conf_table[2, 2] / (conf_table[2, 2] + conf_table[2, 1])), 3)
  specificity <- round(100 * (conf_table[1, 1] / (conf_table[1, 1] + conf_table[1, 2])), 3)
  print(paste("Overall model accuracy:", accuracy))
  print(paste("Sensitivity (True Positive Rate):", sensitivity))
  print(paste("Specificity (False Positive Rate):", specificity))
}