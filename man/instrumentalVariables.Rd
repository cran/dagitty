% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.R
\name{instrumentalVariables}
\alias{instrumentalVariables}
\title{Find Instrumental Variables}
\usage{
instrumentalVariables(x, exposure = NULL, outcome = NULL)
}
\arguments{
\item{x}{the input graph, a DAG.}

\item{exposure}{name of the exposure variable. If not given (default), then the 
exposure variable is supposed to be defined in the graph itself. Only a single
exposure variable and a single outcome variable supported.}

\item{outcome}{name of the outcome variable, also taken from the graph if not given.
Only a single outcome variable is supported.}
}
\description{
Generates a list of instrumental variables that can be used to infer the total effect
of an exposure on an outcome in the presence of latent confounding, under linearity
assumptions.
}
\examples{
# The classic IV model
instrumentalVariables( "dag{ i->x->y; x<->y }", "x", "y" )
# A conditional instrumental variable
instrumentalVariables( "dag{ i->x->y; x<->y ; y<-z->i }", "x", "y" )
}
\references{
B. van der Zander, J. Textor and M. Liskiewicz (2015),
Efficiently Finding Conditional Instruments for Causal Inference.
In \emph{Proceedings of the 24th International Joint Conference on 
Artificial Intelligence (IJCAI 2015)}, pp. 3243-3249. AAAI Press, 2015.
}
