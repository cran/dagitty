% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.R
\name{orientPDAG}
\alias{orientPDAG}
\title{Orient Edges in PDAG.}
\usage{
orientPDAG(x)
}
\arguments{
\item{x}{the input graph, a PDAG.}
}
\description{
Orients as many edges as possible in a  partially directed acyclic graph (PDAG)
 by converting induced subgraphs
X -> Y -- Z to X -> Y -> Z.
}
\examples{
orientPDAG( "pdag { x -> y -- z }" )
}
