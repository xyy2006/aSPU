\name{aSPUpathSingle}
\alias{aSPUpathSingle}
\title{Single-gene based approach of Adaptive Sum of powered score tests (SPUpathSingle and aSPUpathSingle)}
\usage{
aSPUpathSingle(Y, X, cov = NULL, model = c("binomial", "gaussian"), nSNPs,
  pow = 1:8, n.perm = 200, usePCs = F, varprop = 0.95)
}
\arguments{
  \item{Y}{Response or phenotype data. It can be disease
  lables; =0 for controls, =1 for cases. or It can be any
  quantitative traits. Vector with length n (number of
  observations)}

  \item{X}{Genotype or other data; each row for a subject,
  and each column for an SNP. The value of each element is
  the # of the copies for an allele. Matrix with dimension
  n by g (n : number of observation, p : number of genotype
  data)}

  \item{cov}{covariates. Matrix with dimension n by k (n
  :number of observation, k : number of covariates)}

  \item{model}{Use "gaussian" for quantitative trait, and
  use "binomial" for binary trait.}

  \item{nSNPs}{a vector; each element is the number of the
  SNPs in the corresponding gene}

  \item{pow}{SNP specific power(gamma values) used in
  SPUpath test.}

  \item{n.perm}{number of permutations.}

  \item{usePCs}{indicating whether to extract PCs and then
  use PCs of X}

  \item{varprop}{the proportion of the variations explained
  (cutoff) that determines how many first PCs to use.}
}
\value{
Test Statistics and p-values for SPUpathSingle tests and
aSPUpathSingle test. There are three versions. "std"
version is the exactly same version with the paper (Pan,
Kwak and Wei 2015). "unnorm" is unnormalized one which
erased the power of 1/gamma in outside of bracket and
didn't divide the number of SNP for each Gene in gene level
SPU statistics. equation (3) on the paper, outside power of
1/gamma is set to 1 and it didn't divide the number of gene
k_g. "unstd" version it didn't divide the number of SNP for
each Gene. In paper equation (3) we didn't divide the sum
of weighted scores with k_g(the number of SNP).
}
\description{
It gives p-values of the SPUpathSingle tests and
aSPUpathSingle test. We considered applying SPU and aSPU
tests to each gene, then using the minimum p-value to
combine their p-values.
}
\examples{
dat1<-simPathAR1Snp(nGenes=20, nGenes1=5, nSNPlim=c(1, 20), nSNP0=1,
                    LOR=.2, n=100, MAFlim=c(0.05, 0.4), p0=0.05 )
p.pathaspusingle<- aSPUpathSingle(dat1$Y, dat1$X, nSNPs = dat1$nSNPs,
         model = "binomial", pow=1:8, n.perm=100)
}
\author{
Il-Youp Kwak, Peng Wei and Wei Pan
}
\references{
Wei Pan, Il-Youp Kwak and Peng Wei (2015) A Powerful and
Pathway-Based Adaptive Test for Genetic Association With
Common or Rare Variants (in revision)
}
\seealso{
\code{\link{simPathAR1Snp}} \code{\link{aSPUpath}}
}

