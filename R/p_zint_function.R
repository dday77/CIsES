#' One-Sample z-Interval for Proportions
#'
#' This function performs a simple 1-prop two-sided z-interval.
#'
#' @param X the numerator input for the proportion
#' @param n the denominator input for the proportion
#' @param CL the confidence level of the interval, defaults to 0.95
#' @importFrom stats qnorm
#' @return The function returns the values of the sample proportion,
#'     the sample size, the standard error, the critical value, and
#'     the lower and upper bounds for the confidence interval.
#'
#' @examples
#' p.zint(400,10000,CL=0.98)
#'
#' p.zint(X=632,n=800)
#'
#' @export

p.zint<-function (X, n, CL=0.95)
{
	phat=X/n
	qhat=1-phat
	cv=round(qnorm((1+CL)/2),3)
	se_p=sqrt((phat*qhat)/n)
	L=round(phat-cv*se_p,4)
	U=round(phat+cv*se_p,4)

	T=paste("One-Sample z-Interval for proportions:", CL)
	out=data.frame(phat,n,se_p,cv,L,U)
	names(out)=c("p-hat","n","sig_phat","crit.value","Lower","Upper")

	cat("\n",T,"\n","\n")
	print(out)
}
