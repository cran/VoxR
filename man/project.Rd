\name{project}
\alias{project}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Projection of voxels within a plan
}
\description{
Projection of voxels within a 2d coordinate system formed by two axes of the original coordinate system.
}
\usage{
project(data, dim)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
a data frame containing the x, y, z, ... coordinates of a point cloud
}
  \item{dim}{
a character string specifying the projection plan : "xy", "xz" or "yz"
}
}
\details{
Default : dim = "xy"
}
\value{
A data frame of a 2D point cloud containing : x, y coordinates of the pixels and the number of voxels (nvox), number of points (npts), ratio npts/nvox contained in each pixel.
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\examples{
data(treecloud_vox)

#-projection in "xy" plan

proj <- project(treecloud_vox,dim="xy")

#-creating vectors with interests variables

npts <- c(proj[,4])
nvox <- c(proj[,3])
ratio <- c(proj[,5])

#-discretisation level

	 # by quantiles (20% quantiles or 25% quantiles)
lev_vox <- level(nvox,by="quantiles",levels=c(0.2))
lev_ratio <- level(ratio,by="quantiles",levels=c(0.25))
	# by percents
lev_pts <- level(npts,by="percents",levels=c(0.2,0.4,0.6,0.8)) 


#- computing surfaces

	# surface in proportion
surf_nvox <- surface(proj,method="nvox",levels=lev_vox,res=0.02,proportion=TRUE)
	# surface in absolute
surf_ratio <- surface(proj,method="ratio",levels=lev_ratio,res=1,proportion=FALSE)
	# surface in absolute
surf_npts <- surface(proj,method="npts",levels=lev_pts,res=0.02,proportion=FALSE)

#- ploting raster images

par(mfrow=c(1,1),mai=c(1,0,1,0),omi=c(0,1,0,0))

raster.proj(proj,title="nvox",res=0.02,method="nvox",levels=lev_vox,
			colors=c("lightblue","green","yellow","red","purple"),
            contour=TRUE,surf=surf_nvox,dim="xy")
                  
raster.proj(proj,title="npts",res=0.02,method="npts",levels=lev_pts,
			colors=c("lightblue","green","yellow","red","purple"),
            contour=TRUE,surf=surf_npts,dim="xy")
                  
raster.proj(proj,title="ratio",res=0.02,method="ratio",levels=lev_ratio,
			colors=c("lightblue","green","yellow","red"),
            contour=TRUE,surf=surf_ratio,dim="xy")

####################################################################################
#>>>>> Easy way : define level using the 99 percentile help to stabilize the results

npts_perc <- quantile(npts,probs=seq(0,1,0.01))[100]
npts_norm_perc  <- subset(npts,npts<npts_perc)
lev_perc <- level(npts_norm_perc,by="quantiles",levels=c(0.2))
lev_perc[5] <- lev_pts[5]
surf_npts_perc <- surface(proj,method="npts",levels=lev_perc,res=0.02,proportion=FALSE) 

raster.proj(proj,title="npts 99perc",res=0.02,method="npts",levels=lev_perc,
			colors=c("lightblue","green","yellow","red","purple"),
			contour=TRUE,surf=surf_npts_perc,dim="xy")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{3d points cloud}
\keyword{2d points cloud}% __ONLY ONE__ keyword per line
\keyword{projection}