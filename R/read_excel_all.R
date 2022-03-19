#' @export
read_excel_all <- function(path) {
  sheet_names <- readxl::excel_sheets(path)
  sheet_names_tidy <- snakecase::to_snake_case(sheet_names)

  sheet_names %>%
    purrr::map(readxl::read_excel, path = path) %>%
    purrr::set_names(sheet_names_tidy) %>%
    list2env(globalenv())
}
