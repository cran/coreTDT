\name{FamilyPhase}
\alias{FamilyPhase}
\alias{FamilyPhaseII}
\alias{FamilyPhaseIII}
\alias{PairPhase}

\title{
	Phasing trios
}
\description{
compute compound gentoype for trios from sequencing data
}
\usage{
FamilyPhase(parent.genotype, child.genotype)
FamilyPhaseII(parent.genotype, child.genotype)
FamilyPhaseIII(parent.genotype, child.genotype)
PairPhase(paternal.genotype, child.genotype)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{parent.genotype}{matrix, parents genotype}
  \item{child.genotype}{vector, child gentoype }
  \item{paternal.genotype}{vector, genotype of one parent}
}
\details{
PairPhase: sharing analysis between one parent and child
FamilyPhase: compute cpmpound genotype for trios when parents do not share any variants
FamilyPhaseII: compute cpmpound genotype for trios. when parents share heterozygous variants, remove shared variants and perform test
FamilyPhaseIII: compute cpmpound genotype for trios. when parents share heterozygous variants, set family as missing data,used in current analysis

}
\value{
	3 elements vector: paternal compound genotype, maternal compound genotype and child's compound genotype
}

