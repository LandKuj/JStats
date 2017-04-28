#' Create training, testing, and validations sets
#'
#'@return creates globally accessible variables
#'
#' @examples 
#' split_data(frame, c(.8, .2))
#' split_data(frame, c(.7, .2, .1))
#' @export
split_data <- function(frame, proportions, sam_index=1, name="out") {
  sample_size <- floor(proportions[1] * nrow(frame))
  index <- sample(seq_len(nrow(frame)), size=sample_size)
  if(name == "out") {
    name <- paste(substitute(frame), "", sep="")
  }
  if(sam_index == 1) {
    assign(paste(substitute(frame), "_train", sep=""),frame[index,], envir = .GlobalEnv)
  } else if(sam_index == 2) {
    assign(paste(name, "_test", sep=""),frame[index,], envir = .GlobalEnv)
  } else if(sam_index == 3) {
    assign(paste(name, "_validate", sep=""),frame[index,], envir = .GlobalEnv)
  } else {
    assign(paste(substitute(frame), "_", sam_index, sep=""),frame[index,], envir = .GlobalEnv)
  }
  
  ## Rebalance remaining proportions
  proportions <- proportions[-1]
  proportions <- proportions/sum(proportions)
  
  ## build last set
  if(length(proportions) == 1) {
    if(sam_index == 1) {
      assign(paste(name, "_test", sep=""),frame[-index,], envir = .GlobalEnv)
    } else if (sam_index == 2) {
      assign(paste(name, "_validate", sep=""),frame[-index,], envir = .GlobalEnv)
    } else {
      assign(paste(name, "_", sam_index, sep=""),frame[-index,], envir = .GlobalEnv)
    }
  } else {
  split_data(frame[-index,], proportions, sam_index+1, name)
  }
}