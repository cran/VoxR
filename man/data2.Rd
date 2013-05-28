\name{data2}
\alias{data2}
\docType{data}
\title{
Cubic point cloud
}
\description{
Cubic point cloud used as an example for the \link[VoxR]{sub.obj} function complementary toward \link[VoxR]{data1}.
}
\usage{data(data2)}
\format{
  A data frame with 7140 observations on the following 4 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
    \item{\code{Z}}{a numeric vector}
    \item{\code{NBpts}}{a numeric vector}
  }
}
\examples{
data(data2)
require(rgl)
library(rgl)
plot3d(data2)
}
\keyword{datasets}
