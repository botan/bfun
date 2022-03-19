#' @export
last <- function(x, na.rm = FALSE) {
  if (isTRUE(na.rm)) last <- na.omit(last)
  x[length(x)]
}
