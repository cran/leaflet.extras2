% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/heightgraph.R
\name{heightgraphOptions}
\alias{heightgraphOptions}
\title{heightgraphOptions}
\usage{
heightgraphOptions(
  position = c("bottomright", "topleft", "topright", "bottomleft"),
  width = 800,
  height = 200,
  margins = list(top = 10, right = 30, bottom = 55, left = 50),
  expand = TRUE,
  expandCallback = NULL,
  mappings = NULL,
  highlightStyle = list(color = "red"),
  translation = NULL,
  xTicks = 3,
  yTicks = 3
)
}
\arguments{
\item{position}{position of control: "topleft", "topright", "bottomleft", or
"bottomright". Default is \code{bottomright}.}

\item{width}{The width of the expanded heightgraph display in pixels. Default
is \code{800}.}

\item{height}{The height of the expanded heightgraph display in pixels.
Default is \code{200}.}

\item{margins}{The margins define the distance between the border of the
heightgraph and the actual graph inside. You are able to specify margins
for top, right, bottom and left in pixels. Default is \code{list(top = 10,
right = 30, bottom = 55, left = 50)}.}

\item{expand}{Boolean value that defines if the heightgraph should be
expanded on creation. Default is \code{200}.}

\item{expandCallback}{Function to be called if the heightgraph is expanded or
reduced. The state of the heightgraph is passed as an argument. It is
\code{TRUE} when expanded and \code{FALSE} when reduced. Default is
\code{NULL}.}

\item{mappings}{You may add a mappings object to customize the colors and
labels in the height graph. Without adding custom mappings the segments and
labels within the graph will be displayed in random colors. Each key of the
object must correspond to the \code{summary} key in \code{properties}
within the \code{FeatureCollection}. Default is \code{NULL}.}

\item{highlightStyle}{You can customize the highlight style when using the
horizontal line to find parts of the route above an elevation value. Use
any Leaflet Path options as value of the highlightStyle parameter. Default
is \code{list(color = "red")}.}

\item{translation}{You can change the labels of the heightgraph info field by
passing translations for \code{distance}, \code{elevation},
\code{segment_length}, \code{type} and \code{legend}. Default is
\code{NULL}.}

\item{xTicks}{Specify the tick frequency in the x axis of the graph.
Corresponds approximately to 2 to the power of value ticks. Default is
\code{3}.}

\item{yTicks}{Specify the tick frequency in the y axis of the graph.
Corresponds approximately to 2 to the power of value ticks. Default is
\code{3}.}
}
\value{
A list of further options for \code{addHeightgraph}
}
\description{
Customize the heightgraph with the following additional options.
}
\seealso{
Other Heightgraph Functions: 
\code{\link{addHeightgraph}()}
}
\concept{Heightgraph Functions}
