% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/movingmarker.R
\name{movingMarkerOptions}
\alias{movingMarkerOptions}
\title{Set options for Moving Markers}
\usage{
movingMarkerOptions(autostart = FALSE, loop = FALSE, pauseOnZoom = FALSE)
}
\arguments{
\item{autostart}{If \code{TRUE} the marker will start automatically after it
is added to map. Default is \code{FALSE}}

\item{loop}{if \code{TRUE} the marker will start automatically at the
beginning of the polyline when the it arrives at the end.
Default is \code{FALSE}}

\item{pauseOnZoom}{Pause the marker while zooming. While this improves the
animation, it is not recommended because the animation time is lost and
the marker will not appear at the correct time at the next station.
Default is \code{FALSE}}
}
\value{
A list of extra options for moving markers
}
\description{
Set options for Moving Markers
}
\references{
\url{https://github.com/ewoken/Leaflet.MovingMarker}
}
\seealso{
Other MovingMarker Functions: 
\code{\link{addMovingMarker}()},
\code{\link{startMoving}()}
}
\concept{MovingMarker Functions}
