% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.R
\name{ancestorGraph}
\alias{ancestorGraph}
\title{Ancestor Graph}
\usage{
ancestorGraph(x, v = NULL)
}
\arguments{
\item{x}{the input graph, a DAG, MAG, or PDAG.}

\item{v}{variable names.}
}
\description{
Creates the induced subgraph containing only the vertices
in \code{v}, their ancestors, and the edges between them. All
other vertices and edges are discarded.
}
\details{
If the input graph is a MAG or PDAG, then all *possible* ancestors
will be returned (see Examples).
}
\examples{
g <- dagitty("dag{ z <- x -> y }")
ancestorGraph( g, "z" )

g <- dagitty("pdag{ z -- x -> y }")
ancestorGraph( g, "y" ) # includes z

}
