#' Get Frequencies for factor variables
#'
#'@return categorical frequencies for each factor variable
#'
#' @examples
#' factor_freq(frame)
#' @export
factor_freq <- function(frame) {
  count = 0
  for(i in 1:length(frame[1,])) {
    if(is.factor(frame[,i])) {
      print(colnames(frame)[i])
      print(table(frame[,i]))
      count = count + 1
    }
  }
  if(count == 0) {
    print("No factor variables in frame.")
  }
}

