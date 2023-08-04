#' One-Sample z-Interval
#'
#' This function performs a simple one-sample two-sided z-interval.
#'
#' @param x a (non-empty) numeric vector of data. Not needed if user has
#'     access to the sample statistics.
#' @param sig the population standard deviation.
#' @param xbar the sample mean.
#' @param n the sample size.
#' @param CL the confidence level of the interval, defaults to 0.95. Can
#'     be changed to any value between 0 and 1.
#' @importFrom stats qnorm
#'
#' @return The function returns the values of the sample mean,
#'     the sample size, the population standard deviation, the critical value,
#'     the degrees of freedom, and the lower and upper bounds for the
#'     confidence interval.
#'
#' @examples
#' x=c(199,169,385,329,269,149,135,249,349,299,249)
#' zint(x,sig = 85,CL=.95)
#'
#' zint(xbar=45,sig=0.1,n=5,CL=0.9)
#'
#' @export

zint<-function (x,sig,xbar=NULL,n=NULL,CL=0.95)
{
	if(!missing(x)){
		xbar=mean(x)
		n=length(x)
		}
	cv=round(qnorm((1+CL)/2),3)
	L=round(xbar-cv*(sig/sqrt(n)),4)
	U=round(xbar+cv*(sig/sqrt(n)),4)

	T=paste("One-Sample z-Interval:", CL)
	out=data.frame(xbar,n,sig,cv,L,U)
	names(out)=c("xbar","n","sigma","crit. value","Lower","Upper")

	cat("\n",T,"\n","\n")
	print(out)
}
