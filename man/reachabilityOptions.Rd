% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reachability.R
\name{reachabilityOptions}
\alias{reachabilityOptions}
\title{reachabilityOptions}
\usage{
reachabilityOptions(
  collapsed = TRUE,
  pane = "overlayPane",
  position = "topleft",
  ...
)
}
\arguments{
\item{collapsed}{Should the control widget start in a collapsed mode.
Default is \code{TRUE}}

\item{pane}{Leaflet pane to add the isolines GeoJSON to.
Default is \code{overlayPane}}

\item{position}{Leaflet control pane position. Default is \code{topleft}}

\item{...}{Further arguments passed to `L.Control.Reachability`}
}
\value{
A list of options for \code{addReachability}
}
\description{
Add extra options. For a full list please visit the
\href{https://github.com/traffordDataLab/leaflet.reachability}{plugin repository}.
}
\references{
\url{https://github.com/traffordDataLab/leaflet.reachability}
}
\seealso{
Other Reachability Functions: 
\code{\link{addReachability}()},
\code{\link{removeReachability}()}
}
\concept{Reachability Functions}
