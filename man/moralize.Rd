% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.R
\name{moralize}
\alias{moralize}
\title{Moral Graph}
\usage{
moralize(x)
}
\arguments{
\item{x}{the input graph, a DAG, MAG, or PDAG.}
}
\description{
Graph obtained from \code{x} by (1) \dQuote{marrying} (inserting an undirected
ede between) all nodes that have common children, and then replacing all edges
by undirected edges. If \code{x} contains bidirected edges, then all sets of 
nodes connected by a path containing only bidirected edges are treated like a 
single node (see Examples).
}
\examples{
# returns a complete graph
moralize( "dag{ x->m<-y }" )
# also returns a complete graph
moralize( "dag{ x -> m1 <-> m2 <-> m3 <-> m4 <- y }" )

}
