\name{raster.proj}
\alias{raster.proj}
\title{
Create a raster image from \link[VoxR]{project}, \link[VoxR]{level} and \link[VoxR]{surface}
}
\description{
Easy tool for raster image creation from projections created by the \link[VoxR]{project} function using \link[VoxR]{level} function for density discretisation with the possibility of integrating an automatic caption.
}
\usage{
raster.proj(data, title, res, method, levels, colors, contour, classlegend, surf, dim)
}
\arguments{
  \item{data}{
2d point cloud x, y, npts, nvox, npts/nvox
}
  \item{title}{
the raster's title
}
  \item{res}{
pixel resolution in the scale of the original orthonormed system
}
  \item{method}{
a character string specifying the variable of interest from the projection ("nvox", "npts" ou "ratio")
}
  \item{levels}{
a vector containing the density levels of discretisation as created by \link[VoxR]{level}
}
  \item{colors}{
a vector containing the colors of the density classes
}
  \item{contour}{
logical : if TRUE the contours of the density classes are drawn 
}
  \item{classlegend}{
a vector of characters string containing the names of the density classes for the caption
}
  \item{surf}{
a vector containing the surface of each density class for the caption as created by the \link[VoxR]{surface} function
}
  \item{dim}{
a character string specifying the dimension of projection ("xy", "yz", "xz")
}
}
\details{
Defaults :
\itemize{\item method = "nvox"
\item res = 1
\item levels = quantiles 0.25
\item title = ""
\item colors = c(grey, green, yellow, red)
\item contour = TRUE
\item classlegend = ""
\item surf =  ""
\item dim = "xy"
}
}
\value{
Draw the raster image in the default R graphic device
}
\references{
This function use previous work from the following packages :
\itemize{\item sp : Roger S. Bivand, Edzer J. Pebesma, Virgilio Gomez-Rubio, 2008. Applied spatial data analysis with R. Springer, NY. http://www.asdar-book.org/
\item raster : Robert J. Hijmans & Jacob van Etten (2013). raster: Geographic data analysis and modeling. R package version 2.1-25. http://CRAN.R-project.org/package=raster
}
}
\author{
Bastien Lecigne, Sylvain Delagrange and Christian Messier
}
\examples{
data(treecloud_vox)

#- projection in xy plan

proj <- project(treecloud_vox,dim="xy")

#-computing parameters for levels and surf

nvox <- c(proj[,3])
lev_vox <- level(nvox,by="quantiles",levels=c(0.2))
surf_nvox <- surface(proj,method="nvox",levels=lev_vox,res=0.02,proportion=TRUE) 

#- drawing raster

par(mfrow=c(1,1),mai=c(1,0,1,0),omi=c(0,1,0,0))

raster.proj(proj,title="nvox",res=0.02,method="nvox",levels=lev_vox,
			colors=c("lightblue","green","yellow","red","purple"),
			contour=TRUE,surf=surf_nvox,dim="xy")
}
\keyword{ raster ploting }
