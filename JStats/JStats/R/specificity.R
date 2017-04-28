#' Matrix Specificity
#'
#'@return returns the specificity of a confusion matrix
#'
#' @examples 
#' specificity(matrix)
#' @export
specificity <- function(matrix) {
  return(round(100 * (matrix[1, 1] / (matrix[1, 1] + matrix[1, 2])), 3))
}