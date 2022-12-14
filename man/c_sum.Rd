% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/c_sum.R
\name{c_sum}
\alias{c_sum}
\title{c_sum() computes the cluster sum for a given variable, and a given clustering variable}
\usage{
c_sum(x, j)
}
\arguments{
\item{x}{a numeric vector of a single variable}
}
\value{
a numeric vector
}
\description{
c_sum() computes the cluster sum for a given variable, and a given clustering variable
}
\details{
simple wrapper for `ave(variable, group)` function, to estimate cluster sum
}
\examples{
library(dplyr)
example_data <- data.frame(x = c(1,2,3,4,5,6), j = c(1,1,1,2,2,2))
example_data \%>\%
mutate(cluster_sum =  c_sum(x, j)) \%>\%
select(cluster_sum, j) \%>\%
unique() \%>\%
print
}
