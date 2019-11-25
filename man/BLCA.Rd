\name{BLCA}
\alias{BLCA}
\alias{BLCA.ecset}
\docType{data}
\title{RNA-Seq exon count data of Urothelial bladder cancer from TCGA database}
\description{
	This dataset contains RNA-Seq exon conut data corresponding to Urothelial bladder cancer from 115 individuals with pathological stage as design variable in a \code{DEXSeq} package \code{ExonCountSet} object (\url{http://www.bioconductor.org/packages/release/bioc/html/DEXSeq.html}). Original RNA-Seq and clinical data was downloade from TCGA database (\url{http://tcga-data.nci.nih.gov/}). See details for a description of the data post-processing.
}
\usage{data(BLCA)}
\format{
	\code{ExonCountSet} with 224042 features and 115 samples, containing:
	\itemize{
  		\item \code{counts(BRCA.ecset)}: Matrix containing exon expressions as measured by TCGA database RNA-Seq Version 2 pipelines.
  		\item \code{fData(BRCA.ecset)}: AnnotatedDataFrame containing annotations of RNA-Seq data like the exon ID, gene ID, chromosome, exon start position, exon end position, strand and transcripts associated with the exon.
  		\item \code{pData(BRCA.ecset)}: AnnotatedDataFrame containing the condition variable gender.
  	}
} 
\details{
	This dataset was created by joining RNA-Seq, clinical and General Annotation Format data (GAF) corresponding to Urothelial bladder cancer. The  original data was downloaded from TCGA database. Only samples with clinical data were included, and only clinical data for these samples was stored. Exon ID was created by using gene ID identifier, increasing the number of the exon each time appears the same gene ID. Chromosome, exon start position, exon end position, strand and transcripts were obtained from GAF file. Additional clinical data is in the \code{BLCAclinical} \code{data.frame} in this package.
}
\source{Processed data from TCGA data portal under BLCA disease and RNASeqV2 Data Type.}
\references{~~}
\examples{
## load DEXSeq package
library(DEXSeq)
## load the dataset
data(BLCA)
## show the first 5 rows and columns of the expression data
counts(BLCA.ecset)[1:5,1:5]
## show the first 5 rows of the clinical data used in the design
head(pData(BLCA.ecset))
## show first 20 feature names
featureNames(BLCA.ecset)[1:20]
}
\keyword{datasets}
