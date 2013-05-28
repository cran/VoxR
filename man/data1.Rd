\name{data1}
\alias{data1}
\docType{data}
\title{
Cubic point cloud
}
\description{
Cubic point cloud used as an example for the \link[VoxR]{sub.obj} function complementary toward \link[VoxR]{data2}.
}
\usage{data(data1)}
\format{
  A data frame with 9261 observations on the following 4 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
    \item{\code{Z}}{a numeric vector}
    \item{\code{NBpts}}{a numeric vector}
  }
}
\examples{
data(data1)
require(rgl)
library(rgl)
plot3d(data1)
}
\keyword{datasets}
