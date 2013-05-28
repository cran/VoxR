\name{treecloud}
\alias{treecloud}
\docType{data}
\title{
LiDAR scene of a tree
}
\description{
LiDAR scene of a tree digitized using an Ilris 3d (opech) T-LiDAR.
}
\usage{data(treecloud)}
\format{
  A data frame with 680710 observations on the following 3 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
    \item{\code{Z}}{a numeric vector}
  }
}
\examples{
data(treecloud)
require(rgl)
library(rgl)
plot3d(treecloud)
}
\keyword{datasets}
