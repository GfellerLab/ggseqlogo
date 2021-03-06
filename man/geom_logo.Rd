% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggseqlogo.r
\name{geom_logo}
\alias{geom_logo}
\title{Plots sequence logo as a layer on ggplot}
\usage{
geom_logo(data = NULL, method = "bits", seq_type = "auto",
  namespace = NULL, font = "roboto_medium", stack_width = 0.95,
  rev_stack_order = F, col_scheme = "auto", low_col = "black",
  high_col = "yellow", na_col = "grey20", plot = T, additionalAA = NULL,
  smallSampleCorr = TRUE, legendText = TRUE, ...)
}
\arguments{
\item{data}{Character vector of sequences or named list of sequences. All sequences must have same width.}

\item{method}{Height method, can be one of "bits" or "probability" (default: "bits")}

\item{seq_type}{Sequence type, can be one of "auto", "aa", "dna", "rna" or "other" 
(default: "auto", sequence type is automatically guessed)}

\item{namespace}{Character vector of single letters to be used for custom namespaces. Can be alphanumeric, including Greek characters.}

\item{font}{Name of font. See \code{list_fonts} for available fonts.}

\item{stack_width}{Width of letter stack between 0 and 1 (default: 0.95)}

\item{rev_stack_order}{If \code{TRUE}, order of letter stack is reversed (default: FALSE)}

\item{col_scheme}{Color scheme applied to the sequence logo. See \code{list_col_schemes} for available fonts.
(default: "auto", color scheme is automatically picked based on \code{seq_type}). 
One can also pass custom color scheme objects created with the \code{make_col_scheme} function}

\item{low_col, high_col}{Colors for low and high ends of the gradient if a quantitative color scheme is used (default: "black" and "yellow").}

\item{na_col}{Color for letters missing in color scheme (default: "grey20")}

\item{plot}{If \code{FALSE}, plotting data is returned}

\item{additionalAA}{Amino acids that include a modification.}

\item{smallSampleCorr}{Include small-sample correction in information content or not.}

\item{legendText}{Plot legend or not.}

\item{...}{Additional arguments passed to layer params}
}
\description{
Plots sequence logo as a layer on ggplot
}
\examples{
# Load sample data
data(ggseqlogo_sample)

# Produce single sequence logo using geom_logo
p1 = ggseqlogo( seqs_dna[[1]] ) 

}
