#' One-Sample t-Interval
#'
#' This function performs a simple one-sample two-sided t-interval.
#'
#' @param x a (non-empty) numeric vector of data. Not needed if user has
#'     access to the sample statistics.
#' @param s the sample standard deviation.
#' @param xbar the sample mean.
#' @param n the sample size.
#' @param CL the confidence level of the interval, defaults to 0.95. Can
#'     be changed to any value between 0 and 1.
#' @importFrom stats qt sd
#'
#' @return The function returns the values of the sample mean,
#'     the sample size, the sample standard deviation, the critical value,
#'     the degrees of freedom, and the lower and upper bounds for the
#'     confidence interval.
#'
#' @examples
#' Sal=c(0.593, 0.142, 0.329, 0.691, 0.231, 0.793, 0.519, 0.392,
#'     0.418, 0.409, 0.587, 0.446, 0.379, 0.542, 0.138, 0.662,
#'     0.525,0.354, 0.496, 0.725)
#' tint(Sal,CL=.99)
#'
#' tint(xbar=116.9,s=21.7,n=10,CL=0.95)
#'
#' @export

tint<-function (x,s,xbar=NULL,n=NULL,CL=0.95)
{
	if(!missing(x)){
		xbar=mean(x)
		s=sd(x)
		n=length(x)
		df=length(x)-1
		}
	df=n-1
	cv=round(qt((1+CL)/2,df),3)
	L=round(xbar-cv*(s/sqrt(n)),4)
	U=round(xbar+cv*(s/sqrt(n)),4)

	T=paste("One-Sample t-Interval:", CL)
	out=data.frame(xbar,n,s,cv,df,L,U)
	names(out)=c("xbar","n","s","crit. value","df","Lower","Upper")

	cat("\n",T,"\n","\n")
	print(out)
}
