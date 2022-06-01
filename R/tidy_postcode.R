#' @export
tidy_postcode <- function(x) {
  x %>%
    stringr::str_to_upper() %>%
    stringr::str_remove_all(" ") %>%
    stringr::str_replace_all("(.*)(.{3})$", "\\1 \\2")
}
