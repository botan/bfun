lib_update <- function(upgrade = TRUE) {
  pkgs <- utils::old.packages()[, "Package"]
  if (!is.null(pkgs)) {
    pak::pkg_install(pkgs, upgrade = upgrade)
    cli::cli_alert_success("All packages are up to date.")
  } else {
    cli::cli_alert_success("No updates are needed, all packages are up to date.")
  }
}
