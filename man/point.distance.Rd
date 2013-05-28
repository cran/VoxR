\name{point.distance}
\alias{point.distance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Computing distance of points from a unique point
}
\description{
Computing distance of points from a unique point within a point cloud.
}
\usage{
point.distance(data, point)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a point cloud
}
  \item{point}{
a vector containing the x, y, z coordinates of the reference point
}
}
\value{
A vector containing the distance values of the points
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\seealso{
\link[VoxR]{axis.angle} and \link[VoxR]{axis.distance}
}
\examples{
data(treecloud_vox)

#- computing distances

dist <- point.distance(treecloud_vox,point=c(0,0,0))
treecloud_vox[,4] <- dist

#-density plot

plot(density(dist,na.rm=TRUE))

#-3d visualisation

z <- c(sort(unique(round(treecloud_vox[,4],digits=2)),decreasing=TRUE))
col <- rainbow(n=length(z),start=0,end=2/6)
require(rgl)
library(rgl)
open3d()
for(i in 1:length(z)){
  	a <- subset(treecloud_vox,round(treecloud_vox[,4],digits=2)==z[i])
  	plot3d(a,col=col[i],add=TRUE)
 }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{3d points cloud}
\keyword{3d distance}% __ONLY ONE__ keyword per line
