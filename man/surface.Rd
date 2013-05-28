\name{surface}
\alias{surface}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute the surface of density classes of a projection
}
\description{
Compute the surface of density classes within a projection created by the \link[VoxR]{project} function and discretised by \link[VoxR]{level}. The surface is calculated using the following relationship : leveln<=surface<leveln+1
}
\usage{
surface(data, method, levels, res, proportion)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame of a 2D point cloud containing : x, y coordinates of the pixels and the number of voxels (nvox), number of points (npts), ratio npts/nvox contained in each pixel
}
  \item{method}{
character string specifying the variable of interest of the projection : "nvox", "npts" or "ratio"
}
  \item{levels}{
a vector containing the discretisation levels as created by the \link[VoxR]{level} function
}
  \item{res}{
numeric definition of the resolution of the pixels. If res = 1, the calculated surface corresponds to the number of pixels.
}
  \item{proportion}{
logical : if TRUE the surfaces are expressed in proportion to the total surface
}
}
\details{
Defaults :
\itemize{\item levels : quantiles 0.25
\item method = "nvox"
\item res = 1
\item proportion = FALSE
}
}
\value{
A vector containing the surface of each density class
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\examples{
#- projection

data(treecloud_vox)
proj <- project(treecloud_vox,dim="xy")

#- creating vectors with interests variables

npts <- c(proj[,4])
nvox <- c(proj[,3])
ratio <- c(proj[,5])

#-creating level of discretisation

lev_vox <- level(nvox,by="quantiles",levels=c(0.2))
lev_pts <- level(npts,by="percents",levels=c(0.2,0.4,0.6,0.8))
lev_ratio <- c(1,2)# <- level(ratio,by="quantiles",level=c(0.25))

#- computing surfaces

surf_nvox <- surface(proj,method="nvox",levels=lev_vox,res=0.02,proportion=TRUE) 
surf_npts <- surface(proj,method="npts",levels=lev_pts,res=0.02,proportion=FALSE) 
surf_ratio <- surface(proj,method="ratio",levels=lev_ratio,res=1,proportion=FALSE) 
surf_nvox
surf_npts
surf_ratio
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{pixels}
\keyword{pixels surface}% __ONLY ONE__ keyword per line
