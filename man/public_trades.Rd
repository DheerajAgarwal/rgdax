% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/public_trades.R
\name{public_trades}
\alias{public_trades}
\title{Get Latest Buy & Sell Trades.}
\usage{
public_trades(product_id = "BTC-USD")
}
\arguments{
\item{product_id}{Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.}
}
\value{
A dataframe of most recent trades indicating if it was buy / sell and what the trade size was.
}
\description{
This is a public function and will fetch the 100 latest trades for the provided currency pair (product_id).
}
\examples{
\dontrun{
public_trades()
public_trades("BTC-EUR")
}

}
