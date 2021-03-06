% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/holds.R
\name{holds}
\alias{holds}
\title{Get Hold Details for An Account Using Currency}
\usage{
holds(currency = "BTC", api.key, secret, passphrase)
}
\arguments{
\item{currency}{Optional character value. The default is \code{"BTC"}. This is case insensitive and must be a valid currency as provided by \code{\link{accounts}} or \code{\link{account}}.}

\item{api.key}{Mandatory character value. This is the API key as generated by GDAX. Typically a 32 character value.}

\item{secret}{Mandatory character value. This is the API secret as generated by GDAX. Typically a 88 character value.}

\item{passphrase}{Mandatory character value. This is the passphrase as generated by GDAX. Typically a 11 character value.}
}
\value{
Dataframe with timestamp of all the holds for the currency, the amount & type of hold and a reference id which created the hold.
}
\description{
This is an auth based function. User must have valid api keys generated by GDAX which must be passed as mandatory arguments. The function takes a currency as an additional input and returns the hold information. Since currency and account id have one to one mapping, the currency is being used a proxy. The basic hold amounts can also be fetched using \code{\link{account}} or \code{\link{accounts}}, however this function provides additional details and ties to active open orders. Please note that each trade buy order, results in a hold on the currency like \code{USD} and each sell order will result in a hold on the cryptoasset like \code{BTC}.
}
\examples{
\dontrun{
holds(api.key = your_key, secret = your_api_secret, passphrase = your_api_pass)
holds("ETH", api.key = your_key, secret = your_api_secret, passphrase = your_api_pass)
holds("USD", api.key = your_key, secret = your_api_secret, passphrase = your_api_pass)
}

}
