\name{coreTDTexample}
\alias{coreTDTexample}
\title{Example data for coreTDT}
\description{
Example data for coreTDT.
}
\format{
  coreTDTexample contains the following objects:
  \describe{
    \item{samplePed}{dataframe, a numeric genotype matrix of 447 individuals and 244 SNPs. 
	Each row represents a different individual, and each column represents a different SNP marker(from the 7th column), PLINK format}
    \item{evs}{dataframe, rowname: varaint ID() chr_pos_ref_alt/rsID_); col1: gene ID; col2:varID;col3:indicator of variants included in analysis col4: number of samples have genotype 2;col5: number of samples have genotype 1;col6: number of samples have genotype 0;col7: mean coverage at this locus }
  }
}

