\name{LIHCclinical}
\alias{LIHCclinical}
\docType{data}
\title{Additional clinical data for the LIHC.ecset object}
\description{
	This \code{data.frame} object contains all the available categories for the LIHC.ecset object. For more info look at details.
}
\usage{data(LIHCclinical)}
\format{
	Data frame with 77 categories and 62 samples. Each sample in its rowname have a BCR identifier. Definitions of terms within categories are provided by the TCGA BCR Data Dictionary (\url{http://tcga-data.nci.nih.gov/docs/dictionary/TCGA_BCR_DataDictionary.xml}).
} 
\details{
	This \code{data.frame} gives all the categories for the LIHC.ecset object as gathered from the original data from TCGA database. The rownames of the \code{data.frame} show the BCR identifier of the sample where the data belongs. Samples without RNA-Seq data were discarded in order to create this package. The categories contains the gender of each sample, among other bits of information.
}
\source{\url{http://www.creal.cat/jrgonzalez/software.htm}}
\references{~~}
\examples{
## load the clinical data
data(LIHCclinical)
## show the first 5 rows of the clinical data
head(LIHCclinical)
## load the expression data
data(LIHC)
## change the design variable in expression object 
pData(LIHC.ecset)$condition <- LIHCclinical$gender
## show the first 5 rows of the changed clinical data in the expression object
head(pData(LIHC.ecset))
}
\keyword{datasets}
