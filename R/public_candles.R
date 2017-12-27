#' Get bids and asks for provided currency-pair (products) by GDAX.
#'
#' @name public_candles
#'
#' @description This function is a public function and will fetch all bids/asks for provided currency pair (product_id). User should change the level to get the best bid/ask or to fetch all bids/asks.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#' @param start Optional parameter. Start time in ISO 8601
#' @param end Optional parameter. End time in ISO 8601
#' @param granularity Optional parameter. Desired timeslice in seconds.
#'
#' @return  Dataframe with a time of the candle, low, high, open , close and volume for that candle.
#'
#' @examples
#' \dontrun{
#' public_candles()
#' public_candles("ETH-EUR")
#' }
#'
#' @export


public_candles <- function(product_id = "LTC-USD",
                           start = NULL,
                           end = NULL,
                           granularity = NULL) {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/candles")

  #fetch response----
  content <- parse_response(
    path = req.url,
    query = list(
      "start" = start,
      "end" = end,
      "granularity" = granularity
    )
  )

  #transform----
  content <- as.data.frame(content)
  content <-
    content[order(content$V1), ] # sort chorologically by time since epoch
  names(content) <-
    c("time", "low", "high", "open", "close", "volume")
  content$time <-
    as.POSIXct(content$time, origin = "1970-01-01", tz = "GMT")

  #return----
  return(content)
}
