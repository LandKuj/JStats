#' Matrix Accuracy
#'
#'@return returns the accuracy of a confusion matrix
#'
#' @examples 
#' accuracy(matrix)
#' @export
accuracy <- function(matrix) {
  return(round(100 * (matrix[1,1] + matrix[2,2])/sum(matrix), 3))
}