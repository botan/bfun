#' Update All Installed Packages
#'
#' Update all installed packages with using \href{https://github.com/r-lib/pak}{pak}.
#' Note: This function will be removed when \href{https://github.com/r-lib/pak}{pak}
#' provides any equivalent.
#'
#' @param upgrade When `TRUE`, the default, will do ensure that you have the latest version of
#'   `pkg` and all its dependencies.
#'
#'   When `upgrade = FALSE`, it will only upgrade packages if
#'   them explicitly requires a higher version than what you currently have.
#' @seealso \code{\link[utils]{update.packages}}
#' @export
#' @examples
#' \dontrun{
#' lib_update()
#' lib_update(upgrade = FALSE)
#' }
lib_update <- function(upgrade = TRUE) {
  pkgs <- utils::old.packages()[, "Package"]
  if (!is.null(pkgs)) {
    pak::pkg_install(pkgs, upgrade = upgrade)
    cli::cli_alert_success("All packages are up to date.")
  } else {
    cli::cli_alert_success("No updates are needed, all packages are up to date.")
  }
}
