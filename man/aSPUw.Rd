\name{aSPUw}
\alias{aSPUw}
\title{Variance-weighted adaptive Sum of powered score tests. (SPUw and aSPUw)}
\usage{
aSPUw(Y, X, cov = NULL, resample = c("perm", "asymp"),
  model = c("gaussian", "binomial"), pow = c(1:8, Inf), n.perm = 1000,
  userank = T)
}
\arguments{
  \item{Y}{Response or phenotype data. It can be disease
  lables; =0 for controls, =1 for cases.  or It can be any
  quantitative traits. Vector with length n (number of
  observations)}

  \item{X}{Genotype or other data; each row for a subject,
  and each column for an SNP. The value of each element is
  the # of the copies for an allele. Matrix with dimension
  n by g (n : number of observation, p : number of genotype
  data)}

  \item{cov}{covariates. Matrix with dimension n by k (n
  :number of observation, k : number of covariates)}

  \item{resample}{Use "perm" for residual permutations and
  "sim" for simulations from the distribution.}

  \item{model}{Use "gaussian" for quantitative trait, and
  use "binomial" for binary trait.}

  \item{pow}{power used in SPUw test. Vector of g number of
  power.}

  \item{n.perm}{number of permutations or bootstraps}

  \item{userank}{use similar code with original version if
  T, by definition if F}
}
\value{
Test Statistics and p-values for SPUw tests and aSPUw test.
}
\description{
It gives the p-values of the SPUw test and aSPUw test based
on based on the permutation of residuals or simulation from
its distripution.
}
\examples{
data(exdat)
out <- aSPUw(exdat$Y, exdat$X, pow = c(1:8, Inf), n.perm = 1000)
out
}
\author{
Il-Youp Kwak, Junghi Kim, Jeffrey R Wozniak, Bryon A
Mueller, Xiaotong Shen and Wei Pan
}
\references{
Junghi Kim, Jeffrey R Wozniak, Bryon A Mueller, Xiaotong
Shen, Wei Pan (2014) Comparison of statistical tests for
group differences in brain functional networks
}
\seealso{
\code{\link{aSPU}}
}

