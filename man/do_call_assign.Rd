% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{do_call_assign}
\alias{do_call_assign}
\title{Apply a function to a list of objects, merge the outputs into a single
object, and assign the object to the output environment.}
\usage{
do_call_assign(func_tion, sym_bols = NULL, out_put, env_in = .GlobalEnv,
  env_out = .GlobalEnv, ...)
}
\arguments{
\item{func_tion}{name of function that returns a single object
(\code{vector}, \emph{xts} time series, etc.)}

\item{sym_bols}{vector of strings with names of input objects.}

\item{out_put}{string with name of output object.}

\item{env_in}{environment containing the input \code{sym_bols}.}

\item{env_out}{environment for creating the \code{out_put}.}

\item{...}{additional arguments to function \code{func_tion()}.}
}
\value{
A single object (\code{matrix}, \emph{xts} time series, etc.)
}
\description{
Apply a function to a list of objects, merge the outputs into a single
object, and assign the object to the output environment.
}
\details{
Performs an lapply loop over \code{sym_bols}, applies the function
  \code{func_tion()}, merges the outputs into a single object, and creates
  the object in the environment \code{env_out}.  The output object is created
  as a side effect, while its name is returned invisibly.
}
\examples{
new_env <- new.env()
do_call_assign(
   func_tion=ex_tract,
   sym_bols=env_etf$sym_bols,
   out_put="price_s",
   env_in=env_etf, env_out=new_env)
}

