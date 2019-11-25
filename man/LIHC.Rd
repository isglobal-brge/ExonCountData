\name{LIHC}
\alias{LIHC}
\alias{LIHC.ecset}
\docType{data}
\title{RNA-Seq exon count data of Liver Hepatocellular carcinoma from TCGA database}
\description{
	This dataset contains RNA-Seq exon conut data corresponding to Liver Hepatocellular carcinoma from 62 individuals with pathological stage as design variable in a \code{DEXSeq} package \code{ExonCountSet} object (\url{http://www.bioconductor.org/packages/release/bioc/html/DEXSeq.html}). Original RNA-Seq and clinical data was downloade from TCGA database (\url{http://tcga-data.nci.nih.gov/}). See details for a description of the data post-processing.
}
\usage{data(LIHC)}
\format{
	\code{ExonCountSet} with 224042 features and 62 samples, containing:
	\itemize{
  		\item \code{counts(LIHC.ecset)}: Matrix containing exon expressions as measured by TCGA database RNA-Seq Version 2 pipelines.
  		\item \code{fData(LIHC.ecset)}: AnnotatedDataFrame containing annotations of RNA-Seq data like the exon ID, gene ID, chromosome, exon start position, exon end position, strand and transcripts associated with the exon.
  		\item \code{pData(LIHC.ecset)}: AnnotatedDataFrame containing the condition variable gender.
  	}
} 
\details{
	This dataset was created by joining RNA-Seq, clinical and General Annotation Format data (GAF) corresponding to Liver Hepatocellular carcinoma. The  original data was downloaded from TCGA database. Only samples with clinical data were included, and only clinical data for these samples was stored. Exon ID was created by using gene ID identifier, increasing the number of the exon each time appears the same gene ID. Chromosome, exon start position, exon end position, strand and transcripts were obtained from GAF file. Additional clinical data is in the \code{LIHCclinical} \code{data.frame} in this package.
}
\source{Processed data from TCGA data portal under LIHC disease and RNASeqV2 Data Type.}
\references{~~}
\examples{
## load DEXSeq package
library(DEXSeq)
## load the dataset
data(LIHC)
## show the first 5 rows and columns of the expression data
counts(LIHC.ecset)[1:5,1:5]
## show the first 5 rows of the clinical data used in the design
head(pData(LIHC.ecset))
## show first 20 feature names
featureNames(LIHC.ecset)[1:20]
}
\keyword{datasets}
