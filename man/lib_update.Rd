% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lib_update.R
\name{lib_update}
\alias{lib_update}
\title{Update All Installed Packages}
\usage{
lib_update(upgrade = TRUE)
}
\arguments{
\item{upgrade}{When \code{TRUE}, the default, will do ensure that you have the latest version of
\code{pkg} and all its dependencies.

When \code{upgrade = FALSE}, it will only upgrade packages if
them explicitly requires a higher version than what you currently have.}
}
\description{
Update all installed packages with using \href{https://github.com/r-lib/pak}{pak}.
Note: This function will be removed when \href{https://github.com/r-lib/pak}{pak}
provides any equivalent.
}
\examples{
\dontrun{
lib_update()
lib_update(upgrade = FALSE)
}
}
\seealso{
\code{\link[utils]{update.packages}}
}
