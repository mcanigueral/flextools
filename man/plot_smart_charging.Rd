% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/smart-charging.R
\name{plot_smart_charging}
\alias{plot_smart_charging}
\title{Plot smart charging results}
\usage{
plot_smart_charging(
  smart_charging,
  sessions = NULL,
  show_setpoint = TRUE,
  by = NULL,
  ...
)
}
\arguments{
\item{smart_charging}{SmartCharging object, returned by function \code{smart_charging()}}

\item{sessions}{tibble, sessions data set containig the following variables:
\code{"Session"}, \code{"Timecycle"}, \code{"Profile"}, \code{"ConnectionStartDateTime"}, \code{"ConnectionHours"}, \code{"Power"} and \code{"Energy"}}

\item{show_setpoint}{logical, whether to show the setpoint line or not}

\item{by}{character, name of a character column in \code{smart_charging$sessions} (e.g. \code{"Profile"}) or
\code{"FlexType"} (i.e. "Exploited", "Not exploited", "Not flexible", "Not responsive" and "Not considered")}

\item{...}{extra arguments of function \code{evsim::plot_ts()} or other arguments
to pass to \code{dygraphs::dyOptions()}.}
}
\value{
dygraphs plot
}
\description{
HTML interactive plot showing the comparison between the smart charging setpoint
and the actual EV demand after the smart charging program. Also, it is possible
to plot the original EV demand.
}
\examples{
library(dplyr)
sessions <- evsim::california_ev_sessions_profiles \%>\%
  slice_head(n = 50) \%>\%
  evsim::adapt_charging_features(time_resolution = 15)
sessions_demand <- evsim::get_demand(sessions, resolution = 15)

# Don't require any other variable than datetime, since we don't
# care about local generation (just peak shaving objective)
opt_data <- tibble(
  datetime = sessions_demand$datetime,
  production = 0
)

sc_results <- smart_charging(
  sessions, opt_data,
  opt_objective = "grid",
  method = "curtail",
  window_days = 1, window_start_hour = 6
)

# Plot of setpoint and final EV demand
plot_smart_charging(sc_results, legend_show = "onmouseover")

# Native `plot` function also works
plot(sc_results, legend_show = "onmouseover")

# Plot with original demand line
plot_smart_charging(sc_results, sessions = sessions, legend_show = "onmouseover")

# Plot by "FlexType"
plot_smart_charging(sc_results, sessions = sessions, by = "FlexType", legend_show = "onmouseover")

# Plot by user "Profile"
plot_smart_charging(sc_results, sessions = sessions, by = "Profile", legend_show = "onmouseover")

}
