\name{pvalue_calculator}
\alias{pvalue_calculator}
\alias{loglr_comp}
\alias{loglr_comp_2side}
\title{
	compute p value for exact coreTDT
}
\description{
	compute all kinds of p values for exact coreTDT
}
\usage{
pvalue_calculator(y1, y2, n1, n2, theta1 = 0.25, theta2 = 0.5)
loglr_comp(x1, x2, n1, n2, theta1 = 0.25, theta2 = 0.5)
loglr_comp_2side(x1, x2, n1, n2, theta1 = 0.25, theta2 = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y1}{integer, N112}
  \item{y2}{integer, N122}
  \item{n1}{integer, N11}
  \item{n2}{integer, N12}
  \item{theta1}{float, probaliblity of N112 given N11}
  \item{theta2}{float, probaliblity of N122 given N12}
 \item{x1}{integer, N112}
  \item{x2}{integer, N122}

}

\value{
\item{pvalue_pr}{pvalues computed from probabaility model}
\item{pvalue_lr}{pvalues from likelihood ratio test with restricted alternative hypothesis}
\item{pvalue_lr2}{pvalues from likelihood ratio test}
}
