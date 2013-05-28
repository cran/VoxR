\name{level}
\alias{level}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Density levels definition
}
\description{
This function creates density levels from point clouds projected using the function \link[VoxR]{project}. It can be used as a sub function of the \link[VoxR]{raster.proj} function to discriminate voxels, point or ratio npts/nvox density.
}
\usage{
level(datas, by, levels)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{datas}{
a vector containing the values of a variable
}
  \item{by}{
character string specifying which kind of discrimination will be used to define the density levels : "quantiles" or "percents".
}
  \item{levels}{
a vector containing the values of discretisation (see details for more information).
}
}
\details{
Details on levels parameter : if by = "quantiles" indicate the proportion of the variable contaned in each level (if level=0.25 the quantiles will be returned, if level=0.2 the quintiles will be returned). If by = "percents" the levels are defined as a percentage of the varialable (if level=c(0.25,0.5,0.75) the discretisation values will be respectively 25, 50, 75 and 100\% of the maximum value of the variable).

Defaults : by = "quantiles" and if by = "quantiles", level = 0.25 ; if by = "percents", levels = c(25, 50, 75)
}
\value{
A vector containing the values of the discretisation levels
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\link[VoxR]{surface}
}
\examples{
#- projection

data(treecloud_vox)
proj <- project(treecloud_vox,dim="xy")
nvox <- c(proj[,3])
npts <- c(proj[,4])
ratio <- c(proj[,5])

#- computing discretisation level

  #- number of voxels by quantiles
lev_vox <- level(nvox,by="quantiles",levels=c(0.2))
  #-number of points by percents
lev_pts <- level(npts,by="percents",levels=c(0.2,0.4,0.6,0.8))
  #-ration npts/nvox by quantiles
lev_ratio <- level(ratio,by="quantiles",levels=c(0.25)) 

#- to see the levels

lev_vox
lev_pts
lev_ratio 
}
\keyword{variable discretisation}
\keyword{quantiles}% __ONLY ONE__ keyword per line
\keyword{percentages}