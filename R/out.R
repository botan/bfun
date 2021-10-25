#' Find unmatched values
#'
#' %out% is an alternative way of using %in% for unmatched values,
#' which provides more similarity with SQL syntax. Returns a logical vector
#' indicating if there is an unmatch or not for its left operand.
#'
#' @param x A vector. Values to be unmatched.
#' @param table A vector. Values to be unmatched against.
#'
#' @return A logical vector.
#' @rdname out
#' @export
#'
#' @seealso [match()]
#' @examples
#' 1:10 %out% 1:3
#' letters %out% c("a", "e", "i", "o", "u")
`%out%` <- function (x, table) match(x, table, nomatch = 0L) == 0L
