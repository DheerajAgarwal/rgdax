#' Get bids and asks for provided currency-pair (products) by GDAX.
#'
#' @name public_candles
#'
#' @description This function is a public function and will fetch historic rates for provided currency pair (product_id). Rates are returned in grouped buckets based on requested granularity..
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#' @param start Optional parameter. Start time in ISO 8601
#' @param end Optional parameter. End time in ISO 8601
#' @param granularity Optional parameter. Desired timeslice in seconds. The granularity field must be one of the following values: \code{60, 300, 900, 3600, 21600, 86400}. Otherwise, the request will be rejected. These values correspond to timeslices representing one minute, five minutes, fifteen minutes, one hour, six hours, and one day, respectively.
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

# output tested on WIN. Macos pending
public_candles <- function(product_id = "BTC-USD",
                           start = NULL,
                           end = NULL,
                           granularity = NULL) {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/candles")

  #fetch response----
  response <- parse_response(
    path = req.url,
    query = c(
      "start" = start,
      "end" = end,
      "granularity" = granularity
    )
  )

  #transform----

  content <- as.data.frame(fromJSON(rawToChar(response$content)))
  content <-
    content[order(content$V1), ] # sort chorologically by time since epoch
  names(content) <-
    c("time", "low", "high", "open", "close", "volume")
  content$time <-
    as.POSIXct(content$time, origin = "1970-01-01", tz = "GMT")

  #return----
  return(content)
}
