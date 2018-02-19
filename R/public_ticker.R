#' Get Latest Buy & Sell Trade.
#'
#' @name public_ticker
#'
#' @description Snapshot information about the last trade (tick), best bid/ask and 24h volume.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'BTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @return  A dataframe of most recent trade and 24 hr volume.
#'
#' @examples
#' \dontrun{
#' public_ticker()
#' public_ticker("BTC-EUR")
#' }
#'
#' @export


public_ticker <- function(product_id = "BTC-USD") {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/ticker")

  #fetch response----
  content <- parse_response(path = req.url)

  #transform----
  content$time <- strptime(content$time, "%Y-%m-%dT%H:%M:%OS")
  content$price <- as.numeric(content$price)
  content$size <- as.numeric(content$size)
  content$bid <- as.numeric(content$bid)
  content$ask <- as.numeric(content$ask)
  content$volume <- as.numeric(content$volume)
  content <- as.data.frame(content)

  #return----
  return(content)
}
