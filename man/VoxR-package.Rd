\name{VoxR-package}
\alias{VoxR-package}
\alias{VoxR}
\docType{package}
\title{
Metrics extraction of trees from T-LiDAR data
}
\description{
Tools for a geometric description of tree crown, tree growth and spatially differentiated objects recognition based on point cloud voxelisation.
}
\details{
VoxR offers tools for 3d point cloud voxelisation (see \link[VoxR]{vox}), 3d point cloud projection and visualization of  projections (see \link[VoxR]{project}, \link[VoxR]{raster.proj}, \link[VoxR]{level} and \link[VoxR]{surface}), geometrical description of 3d point cloud (see \link[VoxR]{point.distance}, \link[VoxR]{axis.distance} and \link[VoxR]{axis.angle}), tree growth analysis based on voxelised LiDAR point clouds comparison (see \link[VoxR]{sub.obj}) and spatially differentiated objects recognition (see \link[VoxR]{obj.rec}).
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier

Maintainer : Bastien Lecigne <lecignebastien@gmail.com>
}
\references{
This package uses previous work from the following packages :
\itemize{\item sp : Roger S. Bivand, Edzer J. Pebesma, Virgilio Gomez-Rubio, 2008. Applied spatial data analysis with R. Springer, NY. http://www.asdar-book.org/
\item raster : Robert J. Hijmans & Jacob van Etten (2013). raster: Geographic data analysis and modeling. R package version 2.1-25. http://CRAN.R-project.org/package=raster
} 
These packages must be intalled to use the function \link[VoxR]{raster.proj}.

The examples of 3d functions are plotted using the plot3d function from the rgl package : Daniel Adler and Duncan Murdoch (2013). rgl: 3D visualization device system (OpenGL). R package version 0.93.932. http://CRAN.R-project.org/package=rgl
}
\keyword{package}
\keyword{3d point cloud}
\keyword{LiDAR}
\examples{
data(treecloud)

#-voxelisation using the vox function

treecloud_vox <- vox(treecloud,res=0.02)

#-visualisation

require(rgl)
library(rgl)
open3d()
plot3d(treecloud_vox,size=0.1)
}
