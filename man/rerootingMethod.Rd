\name{rerootingMethod}
\alias{rerootingMethod}
\title{Get marginal ancestral state reconstructions by re-rooting}
\usage{
rerootingMethod(tree, x, model=c("ER","SYM"), ...)
}
\arguments{
	\item{tree}{an object of class \code{"phylo"}.}
	\item{x}{a vector of tip values for species, or a matrix containing the prior probability that the tip is in each state. If \code{x} is a vector, then \code{names(x)} should be the species names. If \code{x} is a matrix of prior probabilities, then rownames should be species names, column names should be states for the discrete character, and rows of the matrix should sum to 1.0.}
	\item{model}{any revsersible model. \code{model=c("ER","SYM")} recommended.}
	\item{...}{optional arguments. Presently the logical argument \code{tips}. If \code{tips=TRUE}, then the function will also compute the empirical Bayes posterior probabilities of the tips following Yang (2006).}
}
\description{
	This function uses the re-rooting method of Yang et al. (1995) to get the marginal ancestral state estimates for each internal node of the tree using likelihood. This method get the conditional scaled likelihoods for the root node (which is the same as the marginal ancestral state reconstruction for that node) and successively moves the root to each node in the tree. The function can also return the posterior probabilities for the tip nodes of the tree.
}
\details{
	This function calls \code{\link{fitMk}} internally. \code{fitMk} uses some code adapted from \code{ace} in the ape package.
	
	\code{print} and \code{plot} methods are now available for the object class.
}
\value{
	An object of class \code{"rerootingMethod"} containing at least the following elements:
	\item{loglik}{the log-likelihood.}
	\item{Q}{the fitted transition matrix between states.}
	\item{marginal.anc}{the marginal ancestral state reconstructions for each node (and, optionally, each tip).}
}
\references{
	Paradis, E., J. Claude, and K. Strimmer (2004) APE: Analyses of phylogenetics and evolution in R language. \emph{Bioinformatics}, \bold{20}, 289-290.

	Revell, L. J. (2012) phytools: An R package for phylogenetic comparative biology (and other things). \emph{Methods Ecol. Evol.}, \bold{3}, 217-223.

	Yang, Z., Kumar, S., Nei, M. (1995) A new method of inference of ancestral nucleotide and amino acid sequences. \emph{Genetics}, \bold{141}, 1641-1650.
}
\author{Liam Revell \email{liam.revell@umb.edu}}
\seealso{
	\code{\link{ace}}, \code{\link{fitMk}}, \code{\link{make.simmap}}
}
\keyword{phylogenetics}
\keyword{bayesian}
\keyword{comparative method}
\keyword{maximum likelihood}
