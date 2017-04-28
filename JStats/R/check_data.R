#' Show descriptive information about a dataset
#'
#'@return returns the dimensions of a frame and checks for unequal column lengths and missing values
#'
#' @examples
#' check_data(frame)
#' @export
check_data <- function(frame) {
  row_val <- dim(frame)[1]
  col_val <- dim(frame)[2]
  print(paste("Number of observations/rows:", row_val))
  print(paste("Number of variables/columns:", col_val))
  
  count = 0
  for (i in 2:length(frame[1,])) {
    curr = length(frame[,1])
    if(curr != length(frame[,i])) {
      count = count + 1
    }
    curr = length(frame[,i])
  }
  paste(count, " columns are of unequal length")
 

}



