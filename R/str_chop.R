#' Chop strings by given length
#'
#' str_chop() lets you chop strings into pieces by fixed length.
#'
#' @param string A string in vector or list format.
#' @param length Length of string pieces
#'
#' @return A list.
#' @export
#'
#' @examples
#' x <- paste(letters, collapse = "")
#' str_chop(x)
#' str_chop(x, 2)
#' str_chop(x, 6)
str_chop <- function(string, length = 1) {
  if (missing(string)) {
    rlang::abort("Argument \"string\" is missing, with no default.")
  }

  if ((is.character(length)) || (length < 1) || (length %% 1 != 0)) {
    rlang::abort("Please enter a positive integer value for length!")
  }

  string_length <- stringi::stri_length(string)

  if (string_length %% length != 0) {
    rlang::warn("Length is not divisor of given string!")
  }

  purrr::map2(
    string,
    string_length,
    ~ stringi::stri_sub_all(.x, seq.int(1, .y, by = length), length = length)
  ) %>%
    purrr::flatten()
}
