% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotCells.R
\name{modelMatSelection}
\alias{modelMatSelection}
\title{Retrieve normalised topic-cell and region-topic assignments}
\usage{
modelMatSelection(object, target, method, all.regions = FALSE)
}
\arguments{
\item{object}{Initialized cisTopic object, after the object@selected.model has been filled.}

\item{target}{Whether dimensionality reduction should be applied on cells ('cell') or regions ('region'). Note that for speed and clarity
reasons, dimesionality reduction on regions will only be done using the regions assigned to topics with high confidence 
(see binarizecisTopics()).}

\item{method}{Select the method for processing the cell assignments: 'Z-score' and 'Probability'. In the case of regions, 
an additional method, 'NormTop' is available (see getRegionScores()).}

\item{all.regions}{If target is region, whether to return a matrix with all regions or only regions belonging to binarized 
topics (see binarizecisTopics()).}
}
\description{
Retrieve topic-cell and region-topic assignments
}
\details{
'Z-score' computes the Z-score for each topic assingment per cell/region. 'Probability' divides the topic assignments by the total number
of assignments in the cell/region in the last iteration plus alpha. If using 'NormTop', regions are given an score defined by: \eqn{\beta_{w, k} (\log
\beta_{w,k} - 1 / K \sum_{k'} \log \beta_{w,k'})}.
}
