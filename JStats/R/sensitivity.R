#' Matrix Sensitivity
#'
#'@return returns the sensitivity of a confusion matrix
#'
#' @examples 
#' sensitivity(matrix)
#' @export
sensitivity <- function(matrix) {
  return(round(100 * (matrix[2, 2] / (matrix[2, 2] + matrix[2, 1])), 3))
}