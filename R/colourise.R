#' Generate HTML `<span>` element
#'
#' Vectorised over `text` and `colour`.
#'
#' @param text Either a character vector, or something coercible to one.
#' @param colour A character vector.
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' colourise("something should be red", "red")
#' colourise(letters[1:3], "darkgray")
#' colourise(letters[1:3], c("#ed2024", "#278e43", "#febd11"))
colourise <- function(text, colour) {
  glue::glue('<span style="color: {colour};">{text}</span>')
}
