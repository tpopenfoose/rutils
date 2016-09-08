% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rutils.R
\name{diff_ohlc}
\alias{diff_ohlc}
\title{Calculate the reduced form of an \code{OHLC} time series, or calculate the
standard form from the reduced form of an \code{OHLC} time series.}
\usage{
diff_ohlc(oh_lc, re_duce = TRUE, ...)
}
\arguments{
\item{oh_lc}{an \code{OHLC} time series of prices in \code{xts} format.}

\item{re_duce}{\code{Boolean} should the reduced form be calculated or the
standard form? (default is \code{TRUE})}

\item{...}{additional arguments to function \code{xts::diff.xts()}.}
}
\value{
\code{OHLC} time series with five columns for the \code{Open},
  \code{High}, \code{Low}, \code{Close} prices, and the \code{Volume}, and
  with the same time index as the input series.
}
\description{
Calculate the reduced form of an \code{OHLC} time series, or calculate the
standard form from the reduced form of an \code{OHLC} time series.
}
\details{
The reduced form of an \code{OHLC} time series is obtained by
  calculating the time differences of its \code{Close} prices, and by
  calculating the differences between its \code{Open}, \code{High}, and
  \code{Low} prices minus the \code{Close} prices. The standard form is the
  original \code{OHLC} time series, and can be calculated from its reduced
  form by reversing those operations.
}
\examples{
# calculate reduced form of an OHLC time series
diff_VTI <- rutils::diff_ohlc(env_etf$VTI)
# calculate standard form of an OHLC time series
VTI <- rutils::diff_ohlc(diff_VTI, re_duce=FALSE)
identical(VTI, env_etf$VTI[, 1:5])
}
