% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smart-charging.R
\name{summarise_profile_smart_charging_sessions}
\alias{summarise_profile_smart_charging_sessions}
\title{Get a summary of the new schedule of charging sessions}
\usage{
summarise_profile_smart_charging_sessions(profile_sessions)
}
\arguments{
\item{profile_sessions}{tibble, charging \code{sessions} object from \code{smart_charging()}}
}
\value{
tibble with columns
\code{group} (name of sessions' group),
\code{subgroup} (nome of sessions' subgroup),
\code{n_sessions} (number of sessions) and
\code{pct} (percentage of subgroup sessions from the group)
}
\description{
A table is provided containing the number of \code{Considered}, \code{Responsive},
\code{Flexible} and \code{Exploited} sessions.
}
\keyword{internal}
