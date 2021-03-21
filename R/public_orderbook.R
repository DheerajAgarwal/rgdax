#' Get bids and asks for provided currency-pair (products) by GDAX.
#'
#' @name public_orderbook
#'
#' @description This function is a public function and will fetch all bids/asks for provided currency pair (product_id). User should change the level to get the best bid/ask or to fetch all bids/asks.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'BTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @param level Optional parameter. Integer value of level denoting level of detail. Valid user values of 1, 2, 3. Default to 1.
#'
#' @return  A named list with bids and asks for the provided currency pair.
#'
#' @examples
#' \dontrun{
#' public_orderbook()
#' public_orderbook(product_id = "BCH-USD", level = 3)
#' public_orderbook(product_id = "BTC-EUR", level = 2)
#' }
#'
#' @export


# output tested on WIN. Macos pending. Levels do not work
public_orderbook <- function(product_id = "BTC-USD", level = 1) {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/book")

  #fetch response----
  response <- parse_response(path = req.url,
                            query = list("level" = level))

  #transform----
  content <- as.data.frame(fromJSON(rawToChar(response$content)))
    names(content) <- c("bid_price", "bid_size", "bid_num_orders","ask_price", "ask_size", "ask_num_orders", "sequence")


  #return----
  return(content)
}
