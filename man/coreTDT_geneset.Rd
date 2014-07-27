\name{coreTDT}
\alias{coreTDT_geneset}
\alias{coreTDT_single}
\title{
	Transimission Disequilibrium Test for compound heterozygous and recessive models
}
\description{
	This program is used to compute the pvalues for Transimission Disequilibrium Test for compound heterozygous and recessive models

}
\usage{
coreTDT_geneset(samplePed, controlInf, useControlMAF = TRUE, maf.threshold = 1,
				 qc.proportion = 0.8, geneList = c(), 
				 outputFile = "coreTDT_analysis.out",
				 chrX = FALSE,writeFile=FALSE)
coreTDT_single(ped, maf.threshold = 1, qc.proportion = 0.8, 
				geneid = NA,control.maf = NULL)
}
\arguments{
  \item{samplePed}{plink file to input genetype informations, ref to PLINK recodeA}
  \item{controlInf}{ Files form ATAV,contain information about variants,(evs dataset used)}
  \item{useControlMAF}{logical, if true, remove the variants with control MAF >= maf.threshold, else use parents MAF}
  \item{maf.threshold}{The allowed maximum of MAF that variants will be used in computation}
  \item{qc.proportion}{variants that have more than qc.proportion families with enough coverage will be used in computation}
  \item{geneList}{a vector containing gene names that used to analysis}
  \item{outputFile}{ output file name}
  \item{chrX}{logical, if true, analyse chromosome X, not activated yet}
  \item{writeFile}{logical, if true, write the results to outputFile}
  \item{ped}{contain the genotype information for all samples,assume m families and n snps, 3m * n matrix, each column represents a variant, coded by 0/1/2 (number of alternative alleles);each row represents a sample, the first m rows are for child,the second m rows are for mother,the last m rows are for father}
  \item{geneid}{character, gene name}
  \item{control.maf}{vector contain the MAF of each variant in controls}
}

\value{
\item{pvalue_pr}{pvalues computed from probabaility model}
\item{pvalue_lr}{pvalues from likelihood ratio test with restricted alternative hypothesis}
\item{pvalue_lr2}{pvalues from likelihood ratio test}
\item{nmissing}{number of variants is missing in data}
\item{nMedErr}{number of loci contain mendel errors}
\item{nfamily}{sample size}
\item{nsnp}{number of variants used in analysis}
\item{N11}{number of family with parents compound genotype 1,1}
\item{N12}{number of family with parents compound genotype 1,2}
\item{N112}{number of family with compound genotype 1,1,2}
\item{N122}{number of family with compound genotype 1,2,2}
}
\references{
	Yu Jiang, Janice M McCarthy, Andrew S Allen,Testing the effect of rare compound-heterozygous and recessive mutations in case-parent sequencing studies (In Preparation)
}
\author{
Yu Jiang, Andrew S. Allen
Maintainer: Yu Jiang <yu.jiang@dm.duke.edu>
}

\examples{
data(coreTDTexample)
attach(coreTDTexample)	
coreTDT_geneset(samplePed, controlInf,maf.threshold=0.05,writeFile=FALSE)
}

\keyword{ coreTDT }
