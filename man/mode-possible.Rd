% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mode-possible.R
\name{mode-possible}
\alias{mode-possible}
\alias{mode_possible_min}
\alias{mode_possible_max}
\title{Possible sets of modes}
\usage{
mode_possible_min(x, multiple = FALSE)

mode_possible_max(x, multiple = FALSE)
}
\arguments{
\item{x}{A vector to search for its possible modes.}

\item{multiple}{Boolean. If \code{multiple} is set to \code{TRUE}, the functions return
multiple modes with the same frequency, even if some values are missing.
Default is \code{FALSE} because \code{NA}s may tip the balance between values that
are equally frequent among the known values. Thus, if \code{multiple = TRUE},
the functions don't necessarily return the minimal or maximal sets of
modes, but all values that \emph{might} be part of those sets.}
}
\value{
By default, a vector with the minimal or maximal possible sets of
modes (values tied for most frequent) in \code{x}. If the functions can't
determine these possible modes because of missing values, they return
\code{NA} by default (\code{multiple = FALSE}).
}
\description{
\code{mode_possible_min()} and \code{mode_possible_max()} determine the
minimal and maximal sets of modes from among known modes, given the number
of missing values.
}
\examples{
# "a" is guaranteed to be a mode,
# "b" might also be one, but
# "c" is impossible:
mode_possible_min(c("a", "a", "a", "b", "b", "c", NA))
mode_possible_max(c("a", "a", "a", "b", "b", "c", NA))

# Only `8` can possibly be the mode
# because, even if `NA` is `7`, it's
# still less frequent than `8`:
mode_possible_min(c(7, 7, 8, 8, 8, 8, NA))
mode_possible_max(c(7, 7, 8, 8, 8, 8, NA))

# No clear minimal or maximal set
# of modes because `NA` may tip
# the balance between `1` and `2`
# towards a single mode:
mode_possible_min(c(1, 1, 2, 2, 3, 4, 5, NA))
mode_possible_max(c(1, 1, 2, 2, 3, 4, 5, NA))

# With `multiple = TRUE`, the functions
# return all values that might be part of
# the min / max sets of modes; not these
# sets themselves:
mode_possible_min(c(1, 1, 2, 2, 3, 4, 5, NA), multiple = TRUE)
mode_possible_max(c(1, 1, 2, 2, 3, 4, 5, NA), multiple = TRUE)
}
\seealso{
\code{\link[=mode_count_range]{mode_count_range()}} for the minimal and maximal \emph{numbers} of
possible modes. They can always be determined, even if the present
functions return \code{NA}.
}
