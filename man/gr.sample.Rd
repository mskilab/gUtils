% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{gr.sample}
\alias{gr.sample}
\title{Randomly sample \code{GRanges} intervals within territory}
\usage{
gr.sample(gr, k, wid = 100, replace = TRUE)
}
\arguments{
\item{gr}{Granges defining the territory to sample from}

\item{k}{integer Number of ranges to sample}

\item{wid}{integer Length of the \code{GRanges} element to produce (default = 100)}

\item{replace}{boolean If TRUE, will bootstrap. If FALSE, otherwise will sample without replacement. (default = TRUE)}
}
\value{
GRanges of max length sum(k) [if k is vector) or k*length(gr) (if k is scalar) with labels indicating the originating range.
}
\description{
Samples \code{k} intervals of length "len" from a pile of \code{GRanges}.
\itemize{
\item If k is a scalar then will (uniformly) select k intervals from the summed territory of \code{GRanges}
\item If k is a vector of length(gr) then will uniformly select k intervals from each.
}
}
\note{
This is different from \code{GenomicRanges::sample} function, which just samples from a pile of \code{GRanges}
}
\examples{

## sample 5 \code{GRanges} of length 10 each from territory of RefSeq genes
gr.sample(reduce(example_genes), k=5, wid=10)

}
\author{
Marcin Imielinski
}
