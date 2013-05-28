\name{obj.rec}
\alias{obj.rec}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Spatially differentiated objects recognition
}
\description{
Recognition of spatially differentiated objects within a point cloud. Two points located under within distance of reaserch from each other are considered as the parts of a unique object.
}
\usage{
obj.rec(data, fac)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a voxel cloud
}
  \item{fac}{
numeric specifying the distance of research (in the scale of the original coordinate system)
}
}
\value{
A data frame containing the x, y, z coordinates and object ID of the input data
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\note{
This function can be time consuming if used on big data sets
}
\seealso{
\link[VoxR]{sub.obj}
}
\examples{
data(data_part)

#- voxelisation
data_vox <- vox(data_part,res=1)

#- objects reconuition

datasep <- obj.rec(data_vox,fac=2)


#-visualisation

require(rgl)
library(rgl)
open3d()
b <- subset(datasep,datasep[,4]==1)
plot3d(b,col="green",add=TRUE)
c <- subset(datasep,datasep[,4]==2)
plot3d(c,col="red",add=TRUE)
e <- subset(datasep,datasep[,4]==3)
plot3d(e,col="blue",add=TRUE)
f <- subset(datasep,datasep[,4]==4)
plot3d(f,col="purple",add=TRUE)
}
\keyword{3d objets}
\keyword{3d points cloud}% __ONLY ONE__ keyword per line
