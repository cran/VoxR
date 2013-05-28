\name{axis.angle}
\alias{axis.angle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computing angle of points with an axis}
\description{
Computing angles of points with an axis (x, y or z) and the origin of the 3d Cartesian coordinate system.
}
\usage{
axis.angle(data, axis, projected, plan)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a point cloud
}
  \item{axis}{
charecter string specifying the reference axis to compute the angles : "X", "Y" or "Z"
}
  \item{projected}{
logical : if TRUE the original point cloud will be projected in a 2d coordinate system
}
  \item{plan}{
character string specifying the plan of projection (only if projected = TRUE), see details for more information. 
}
}
\details{
Complementary information for the plan parameter : if axis = "X", projected should be "xz" or "xy" ; if axis = "Y", projected should be "xy" or "xz" ; if  axis = "Z", projected should be "xz" or "yz".	

Default : projected = FALSE.
}
\value{
A vector containing the angle values of the points.
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\seealso{
\link[VoxR]{point.distance} and \link[VoxR]{axis.distance}
}
\examples{
data(treecloud_vox)

###################
#- using projection
#- computing angles

dist <- axis.angle(treecloud_vox,axis="X",projected=TRUE,plan="xy")
treecloud_vox[,4] <- dist

#- density plot

plot(density(dist,na.rm=TRUE))

#- visualisation

z <- c(sort(unique(round(treecloud_vox[,4],digits=0)),decreasing=TRUE))
col <- rainbow(n=length(z),start=0,end=2/6)
library(rgl)
open3d()
for(i in 1:length(z)){
  a <- subset(treecloud_vox,round(treecloud_vox[,4],digits=0)==z[i])
  plot3d(a,col=col[i],add=TRUE)}

#####################
#- without projection
#- computing angles

dist <- axis.angle(treecloud_vox,axis="X",projected=FALSE)
treecloud_vox[,4] <- dist

#- density plot

plot(density(dist,na.rm=TRUE))

#- visualisation

z <- c(sort(unique(round(treecloud_vox[,4],digits=0)),decreasing=TRUE))
col <- rainbow(n=length(z),start=0,end=2/6)
open3d()
for(i in 1:length(z)){
  a <- subset(treecloud_vox,round(treecloud_vox[,4],digits=0)==z[i])
  plot3d(a,col=col[i],add=TRUE)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{3d points cloud}
\keyword{3d angle}% __ONLY ONE__ keyword per line
