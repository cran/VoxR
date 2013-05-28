\name{vox}
\alias{vox}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Voxelisation
}
\description{
Voxelisation algorythm of 3d point cloud recording the number of points within each voxels
}
\usage{
vox(data, res)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a point cloud
}
  \item{res}{
numeric specification of the voxels resolution in the scale of the original coordinate system
}
}
\details{
Default : res = 1
}
\value{
A data frame containing the x, y, z coordinates and the number of points within each voxel of a voxel cloud.
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\examples{
#-import data

data(treecloud)

#-voxelisation

treecloud_vox <- vox(treecloud,res=0.02)

#-visualisation

require(rgl)
library(rgl)
open3d()
plot3d(treecloud_vox,size=0.1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{3d points cloud}
\keyword{voxelisation}% __ONLY ONE__ keyword per line
