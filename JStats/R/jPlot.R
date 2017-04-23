#' JPlot - Simplifed Plot Function
#' 
#' Plots given dataset variables with axis and main title required
#' 
#' @author Jordan Landgrebe
#' @param data dataframe with data to be ploted
#' @param x index to be ploted on x axis
#' @param y index to be ploted on y axis
#' @param labx x label
#' @param laby y label
#' @param main main plot label
#' @examples
#' jPlot(data, x, y, labx, laby)

jPlot <- function(data, x, y, labx, laby, main) {
  plot(data[,x], data[,y], 
       xlab = labx, ylab = laby, 
       main = main)
}
