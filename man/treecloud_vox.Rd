\name{treecloud_vox}
\alias{treecloud_vox}
\docType{data}
\title{
\link[VoxR]{treecloud} voxelised
}
\description{
\link[VoxR]{treecloud} LiDAR scene voxelised using \link[VoxR]{vox} function with a 0.02m resolution
}
\usage{data(treecloud_vox)}
\format{
  A data frame with 373939 observations on the following 4 variables.
  \describe{
    \item{\code{X}}{a numeric vector}
    \item{\code{Y}}{a numeric vector}
    \item{\code{Z}}{a numeric vector}
    \item{\code{NBpts}}{a numeric vector}
  }
}
\examples{
data(treecloud_vox)
require(rgl)
library(rgl)
plot3d(treecloud_vox)
}
\keyword{datasets}
