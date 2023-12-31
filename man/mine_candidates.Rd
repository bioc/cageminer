% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/candidate_mining.R
\name{mine_candidates}
\alias{mine_candidates}
\title{Mine high-confidence candidate genes in a single step}
\usage{
mine_candidates(
  gene_ranges = NULL,
  marker_ranges = NULL,
  window = 2,
  expand_intervals = TRUE,
  gene_col = "ID",
  exp = NULL,
  gcn = NULL,
  guides = NULL,
  metadata,
  metadata_cols = 1,
  sample_group,
  min_cor = 0.2,
  alpha = 0.05,
  ...
)
}
\arguments{
\item{gene_ranges}{A GRanges object with genomic coordinates
of all genes in the genome.}

\item{marker_ranges}{Genomic positions of SNPs. For a single trait,
a GRanges object. For multiple traits, a GRangesList or CompressedGRangesList
object, with each element of the list representing SNP positions for a
particular trait.}

\item{window}{Sliding window (in Mb) upstream and downstream relative
to each SNP. Default: 2.}

\item{expand_intervals}{Logical indicating whether or not to expand markers
that are represented by intervals. This is particularly useful
if users want to use a custom interval defined by linkage disequilibrium,
for example. Default: TRUE.}

\item{gene_col}{Column of the GRanges object containing gene ID.
Default: "ID", the default for gff/gff3 files imported with
rtracklayer::import.}

\item{exp}{Expression data frame with genes in row names and samples in
column names or a SummarizedExperiment object.}

\item{gcn}{Gene coexpression network returned by \code{BioNERO::exp2gcn()}.}

\item{guides}{Guide genes as a character vector or as a data frame with
genes in the first column and gene annotation class in the second column.}

\item{metadata}{Sample metadata with samples in row names and sample
information in the first column. Ignored if \code{exp} is a SummarizedExperiment
object, as the colData will be extracted from the object.}

\item{metadata_cols}{A vector (either numeric or character) indicating
which columns should be extracted from column metadata if \strong{exp}
is a \code{SummarizedExperiment} object. The vector can contain column indices
(numeric) or column names (character). By default, all columns are used.}

\item{sample_group}{Level of sample metadata to be used for filtering
in gene-trait correlation.}

\item{min_cor}{Minimum correlation value for
\code{BioNERO::gene_significance()}. Default: 0.2}

\item{alpha}{Numeric indicating significance level. Default: 0.05}

\item{...}{Additional arguments to \code{BioNERO::gene_significance}.}
}
\value{
A data frame with mined candidate genes and their correlation to
the condition of interest.
}
\description{
Mine high-confidence candidate genes in a single step
}
\examples{
\donttest{
data(pepper_se)
data(snp_pos)
data(gene_ranges)
data(guides)
data(gcn)
set.seed(1)
candidates <- mine_candidates(gene_ranges, snp_pos, exp = pepper_se,
                              gcn = gcn, guides = guides$Gene,
                              sample_group = "PRR_stress")
}
}
