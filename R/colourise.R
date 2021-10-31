colourise <- function(text, colour) {
  glue::glue('<span style="color: {colour};">{text}</span>')
}
