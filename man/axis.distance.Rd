\name{axis.distance}
\alias{axis.distance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Computing distance of points from an axis
}
\description{
Computing distance of points with an axis (x, y or z) and the origin of the 3d Cartesian coordinate system.
}
\usage{
axis.distance(data, axis)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a point cloud
}
  \item{axis}{
character string specifying the reference axis to compute the distances : "X", "Y" or "Z"
}
}
\details{
Default : proportion = FALSE
}
\value{
A vector countaining the distance values of the points.
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\seealso{
\link[VoxR]{point.distance} and \link[VoxR]{axis.angle}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
data(treecloud_vox)

#- computing distances

dist <- axis.distance(treecloud_vox,axis="Z")
treecloud_vox[,4] <- dist

#-density plot

plot(density(dist,na.rm=TRUE))

#-visualisation

z <- c(sort(unique(round(treecloud_vox[,4],digits=2)),decreasing=TRUE))
col <- rainbow(n=length(z),start=0,end=2/6)
require(rgl)
library(rgl)
open3d()
for(i in 1:length(z)){
  a <- subset(treecloud_vox,round(treecloud_vox[,4],digits=2)==z[i])
  plot3d(a,col=col[i],add=TRUE)}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{3d points cloud}
\keyword{3d distance}% __ONLY ONE__ keyword per line
