% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process.R
\name{genomicDensity}
\alias{genomicDensity}
\title{Determine the genomic density of input GRanges across the reference genome.}
\usage{
genomicDensity(gr, res, cutoff = 2, adj = 1, drop.alt.chr = TRUE)
}
\arguments{
\item{gr}{GRanges object which will be used to calculate the genomic density.}

\item{res}{integer value to specify the width of each range. The number of
ranges generated will depend on the resolution to cover the entire reference
genome.}

\item{cutoff}{integer value specifying minimum counts of input ranges in `gr`
required in an output region of the genome to be included. Any regions with
counts below this cutoff will be dropped from the output.}

\item{adj}{integer value to add to every region as an adjustment factor. If
using the log.count or norm.log.count outputs, adding 1 will still include
all ranges rather than lead to -Inf values.}

\item{drop.alt.chr}{logical specifying if alternative chromosomes
(seqnames != chr1:22, X, Y, M) should be removed from the output GRanges
object.}
}
\description{
This function can be used to determine the genomic density
of the input GRanges object. The output GRanges object will contain several
columns with count information in the metadata columns. The columns include:
"count" - the number of ranges within the region, "log.count" - the log
transformation of the count plus the adjustment, and "norm.log.count" - where
the "log.count" has been normalized such that the highest value is 1.0.
}
\author{
Christopher Nobles, Ph.D.
}
