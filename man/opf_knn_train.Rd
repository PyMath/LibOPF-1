% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LibOPF.R
\name{opf_knn_train}
\alias{opf_knn_train}
\title{Executes the training phase of the OPF classifier with knn adjacency}
\usage{
opf_knn_train(trainFile, evaluatFile, kmax, precomputedDistance = NA)
}
\arguments{
\item{trainFile}{The training object produced by the opf_split (subGraph object)}

\item{evaluatFile}{The evaluation object produced by the opf_split (subGraph object)}

\item{kmax}{The kmax (maximum degree for the knn graph)}

\item{precomputedDistance}{The precomputed distance matrix produced by the opf_distance (leave it in blank if you are not using this resource)}
}
\value{
Returns a list which contains the classifier object and the classification list object (i.e., clusters' id)
}
\description{
Executes the training phase of the OPF classifier with knn adjacency
}
\details{
Returns a list which contains the classifier object and the classification list object
}
\examples{
dat <- opf_read_subGraph(system.file("extdata/boat.dat",package = "LibOPF"))
X <- opf_split(dat,0.3,0.2,0.5,0)
T <- X$training
T2 <- X$testing
E <- X$evaluating
Y <- opf_knn_train(T,E,100)
class <- opf_knn_classify(T2, Y$classifier)
acc <- opf_accuracy(T2, class)

}
