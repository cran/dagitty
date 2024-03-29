% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dagitty.R
\name{AncestralRelations}
\alias{AncestralRelations}
\alias{descendants}
\alias{ancestors}
\alias{children}
\alias{parents}
\alias{neighbours}
\alias{spouses}
\alias{adjacentNodes}
\alias{markovBlanket}
\title{Ancestral Relations}
\usage{
descendants(x, v, proper = FALSE)

ancestors(x, v, proper = FALSE)

children(x, v)

parents(x, v)

neighbours(x, v)

spouses(x, v)

adjacentNodes(x, v)

markovBlanket(x, v)
}
\arguments{
\item{x}{the input graph, of any type.}

\item{v}{name(s) of variable(s).}

\item{proper}{logical. By default (\code{proper=FALSE}), the \code{descendants} or \code{ancestors}
of a variable include the variable itself. For (\code{proper=TRUE}), the variable itself 
is not included.

\code{descendants(x,v)} retrieves variables that are are reachable from \code{v} via 
a directed path.

\code{ancestors(x,v)} retrieves variables from which \code{v} is reachable via a 
directed path.

\code{children(x,v)} finds all variables \code{w} connected to \code{v} 
by an edge \eqn{v} -> \eqn{w}.

\code{parents(x,v)} finds all variables \code{w} connected to \code{v} 
by an edge \eqn{w} -> \eqn{v}.

\code{markovBlanket(x,v}) returns \code{x}'s parents, its children, and all other
parents of its children. The Markov blanket always renders \code{x} independent
of all other nodes in the graph.

By convention, \code{descendants(x,v)} and \code{ancestors(x,v)} include 
\code{v} but \code{children(x,v)} and \code{parents(x,v)} do not.}
}
\description{
Retrieve the names of all variables in a given graph that are in the specified 
ancestral relationship to the input variable \code{v}.
}
\examples{
g <- dagitty("graph{ a <-> x -> b ; c -- x <- d }")
# Includes "x"
descendants(g,"x")
# Does not include "x"
descendants(g,"x",TRUE)
parents(g,"x")
spouses(g,"x") 

}
