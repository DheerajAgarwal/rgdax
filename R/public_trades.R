#' Get Latest Buy & Sell Trades.
#'
#' @name public_trades
#'
#' @description This is a public function and will fetch the 100 latest trades for the provided currency pair (product_id).
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @return  A dataframe of most recent trades indicating if it was buy / sell and what the trade size was.
#'
#' @examples
#' \dontrun{
#' public_trades()
#' public_trades("BTC-EUR")
#' }
#'
#' @export

# output tested on WIN. Macos pending.
public_trades <- function(product_id = "BTC-USD") {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/trades")

  #fetch response----
  response <- parse_response(path = req.url)

  #transform----
  content <- as.data.frame(fromJSON(rawToChar(response$content)))
  content$time <- strptime(content$time, "%Y-%m-%dT%H:%M:%OS")
  content$price <- as.numeric(content$price)
  content$size <- as.numeric(content$size)

  #return----
  return(content)
}
