\name{sub.obj}
\alias{sub.obj}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Substraction of two voxel coulds
}
\description{
Isolation of unique voxels to one of two voxel clouds based on the detection of isolated voxels within a voxels of bigger dimmensions.
}
\usage{
sub.obj(data1, data2, res, nvox.reaserch)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data1}{
a data frame containing the x, y, z, ... coordinates of a point cloud from which "data2" will be substracted
}
  \item{data2}{
a data frame containing the x, y, z, ... coordinates of a point cloud to substract to "data1"
}
  \item{res}{
numeric specification of the resolution of the voxels (in the scale of the original coordinate system)
}
  \item{nvox.reaserch}{
numeric specifying as a factor the resolution of the research's voxel (nvox.reasearch * res)
}
}
\value{
A data frame containing the x, y, z coordinates of the voxels unique to data1
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\note{
This function can be time consuming if used on big data sets
}
\examples{
#- importing 2 data dets
data(data1)
data(data2)

#- substraction of data2 to data1

sub <- sub.obj(data1,data2,res=0.5,nvox.reaserch=1)

#-visualisation

require(rgl)
library(rgl)
open3d()
plot3d(sub,col="red",add=TRUE)
plot3d(data2,add=TRUE)
}
\keyword{3d points clouds substraction}
\keyword{3d points clouds}% __ONLY ONE__ keyword per line
