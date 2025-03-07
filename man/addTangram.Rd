% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tangram.R
\name{addTangram}
\alias{addTangram}
\title{Adds a Tangram layer to a Leaflet map in a Shiny App.}
\usage{
addTangram(map, scene = NULL, layerId = NULL, group = NULL, options = NULL)
}
\arguments{
\item{map}{a map widget object created from \code{\link[leaflet]{leaflet}()}}

\item{scene}{Path to a required \bold{.yaml} or \bold{.zip} file. If the file
is within the \code{/www} folder of a Shiny-App, only the filename must be
given, otherwise the full path is needed. See the
\href{https://github.com/tangrams/tangram}{Tangram repository} or the
\href{https://tangrams.readthedocs.io/en/latest/}{Tangram docs} for further
information on how to edit such a .yaml file.}

\item{layerId}{the layer id}

\item{group}{the name of the group the newly created layers should belong to
(for \code{\link[leaflet]{clearGroup}} and \code{\link[leaflet]{addLayersControl}} purposes).
Human-friendly group names are permitted--they need not be short,
identifier-style names. Any number of layers and even different types of
layers (e.g. markers and polygons) can share the same group name.}

\item{options}{A list of further options. See the app in the
\code{examples/tangram} folder or the
\href{https://tangrams.readthedocs.io/en/latest/Overviews/Tangram-Overview/#leaflet}{docs}
 for further information.}
}
\value{
the new \code{map} object
}
\description{
Adds a Tangram layer to a Leaflet map in a Shiny App.
}
\note{
Only works correctly in a Shiny-App environment.
}
\examples{
\dontrun{
library(shiny)
library(leaflet)
library(leaflet.extras2)

## In the /www folder of a ShinyApp. Must contain the Nextzen API-key
scene <- "scene.yaml"

ui <- fluidPage(leafletOutput("map"))

server <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet() \%>\%
      addTiles(group = "base") \%>\%
      addTangram(scene = scene, group = "tangram") \%>\%
      addCircleMarkers(data = breweries91, group = "brews") \%>\%
      setView(11, 49.4, 14) \%>\%
      addLayersControl(
        baseGroups = c("tangram", "base"),
        overlayGroups = c("brews")
      )
  })
}

shinyApp(ui, server)
}
}
\references{
\url{https://github.com/tangrams/tangram}
}
\concept{Tangram Functions}
