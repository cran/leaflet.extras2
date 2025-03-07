% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/timeslider.R
\name{addTimeslider}
\alias{addTimeslider}
\title{Add Time Slider to Leaflet}
\usage{
addTimeslider(
  map,
  data,
  radius = 10,
  stroke = TRUE,
  color = "#03F",
  weight = 5,
  opacity = 0.5,
  fill = TRUE,
  fillColor = color,
  fillOpacity = 0.2,
  dashArray = NULL,
  popup = NULL,
  popupOptions = NULL,
  label = NULL,
  labelOptions = NULL,
  ordertime = TRUE,
  options = timesliderOptions()
)
}
\arguments{
\item{map}{a map widget}

\item{data}{data must be a Simple Feature collection of type POINT or LINESTRING
with a column of class Date or POSIXct.}

\item{radius}{a numeric vector of radii for the circles; it can also be a
one-sided formula, in which case the radius values are derived from the
\code{data} (units in meters for circles, and pixels for circle markers)}

\item{stroke}{whether to draw stroke along the path (e.g. the borders of
polygons or circles)}

\item{color}{stroke color}

\item{weight}{stroke width in pixels}

\item{opacity}{stroke opacity (or layer opacity for tile layers)}

\item{fill}{whether to fill the path with color (e.g. filling on polygons or
circles)}

\item{fillColor}{fill color}

\item{fillOpacity}{fill opacity}

\item{dashArray}{a string that defines the stroke
\href{https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-dasharray}{dash
pattern}}

\item{popup}{a character vector of the HTML content for the popups (you are
recommended to escape the text using \code{\link[htmltools]{htmlEscape}()}
for security reasons)}

\item{popupOptions}{A Vector of \code{\link[leaflet]{popupOptions}} to provide popups}

\item{label}{a character vector of the HTML content for the labels}

\item{labelOptions}{A Vector of \code{\link[leaflet]{labelOptions}} to provide label
options for each label. Default \code{NULL}}

\item{ordertime}{boolean value indicating whether to order the data by the
time column. The slider will adopt the order of the timestamps.
The default is \code{TRUE}.}

\item{options}{List of additional options. See \code{\link{timesliderOptions}}}
}
\value{
the new \code{map} object
}
\description{
The \href{https://github.com/dwilhelm89/LeafletSlider}{LeafletSlider plugin}
enables you to dynamically add and remove Markers/Lines on a map by using a
JQuery UI slider.
}
\examples{
library(leaflet)
library(leaflet.extras2)
library(sf)

data <- sf::st_as_sf(leaflet::atlStorms2005[1, ])
data <- st_cast(data, "POINT")
data$time <- as.POSIXct(
  seq.POSIXt(Sys.time() - 1000, Sys.time(), length.out = nrow(data))
)

leaflet() \%>\%
  addTiles() \%>\%
  addTimeslider(
    data = data,
    options = timesliderOptions(
      position = "topright",
      timeAttribute = "time",
      range = TRUE
    )
  ) \%>\%
  setView(-72, 22, 4)
}
\references{
\url{https://github.com/dwilhelm89/LeafletSlider}
}
\seealso{
Other Timeslider Functions: 
\code{\link{removeTimeslider}()},
\code{\link{timesliderOptions}()}
}
\concept{Timeslider Functions}
