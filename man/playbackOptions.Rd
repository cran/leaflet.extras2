% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/playback.R
\name{playbackOptions}
\alias{playbackOptions}
\title{playbackOptions}
\usage{
playbackOptions(
  color = "blue",
  radius = 5,
  tickLen = 250,
  speed = 50,
  maxInterpolationTime = 5 * 60 * 1000,
  tracksLayer = TRUE,
  playControl = TRUE,
  dateControl = TRUE,
  sliderControl = TRUE,
  orientIcons = FALSE,
  staleTime = 60 * 60 * 1000,
  transitionpopup = TRUE,
  transitionlabel = TRUE,
  ...
)
}
\arguments{
\item{color}{colors of the CircleMarkers.}

\item{radius}{a numeric value for the radius of the CircleMarkers.}

\item{tickLen}{Set tick length in milliseconds. Increasing this value, may
improve performance, at the cost of animation smoothness. Default is 250}

\item{speed}{Set float multiplier for default animation speed. Default is 50}

\item{maxInterpolationTime}{Set max interpolation time in milliseconds.
Default is 5*60*1000 (5 minutes).}

\item{tracksLayer}{Set \code{TRUE} if you want to show layer control on the
map. Default is \code{TRUE}}

\item{playControl}{Set \code{TRUE} if play button is needed.
Default is \code{TRUE}}

\item{dateControl}{Set \code{TRUE} if date label is needed.
Default is \code{TRUE}}

\item{sliderControl}{Set \code{TRUE} if slider control is needed.
Default is \code{TRUE}}

\item{orientIcons}{Set \code{TRUE} if you want icons to orient themselves on each
tick based on the bearing towards their next location. Default: \code{FALSE}}

\item{staleTime}{Set time before a track is considered stale and faded out.
Default is 60*60*1000 (1 hour)}

\item{transitionpopup}{Should the position of the popup move smoothly,
like the marker icon? Default: \code{TRUE}}

\item{transitionlabel}{Should the position of the label move smoothly,
like the marker icon? Default: \code{TRUE}}

\item{...}{Further arguments passed to `L.Playback`}
}
\value{
A list of options for \code{addPlayback}
}
\description{
A list of options for \code{\link{addPlayback}}. For a full list please visit
the \href{https://github.com/hallahan/LeafletPlayback}{plugin repository}.
}
\references{
\url{https://github.com/hallahan/LeafletPlayback}
}
\seealso{
Other Playback Functions: 
\code{\link{addPlayback}()},
\code{\link{removePlayback}()}
}
\concept{Playback Functions}
