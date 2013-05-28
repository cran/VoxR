\name{data_part}
\alias{data_part}
\docType{data}
\title{Geometrics objects spatially differentiated}
\description{
Point cloud presenting spatially differentiated geometric objects used as an example for the \link[VoxR]{obj.rec} function.
}
\usage{data(data_part)}
\format{
  A data frame with 2382 observations on the following 4 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
    \item{\code{Z}}{a numeric vector}
    \item{\code{NBpts}}{a numeric vector}
  }
}
\examples{
data(data_part)
require(rgl)
library(rgl)
plot3d(data_part)
}
\keyword{datasets}
