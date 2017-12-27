#' Get bids and asks for provided currency-pair (products) by GDAX.
#'
#' @name public_orderbook
#'
#' @description This function is a public function and will fetch all bids/asks for provided currency pair (product_id). User should change the level to get the best bid/ask or to fetch all bids/asks.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @param level Optional parameter. Integer value of level denoting level of detail. Valid user values of 1, 2, 3. Default to 1.
#'
#' @return  TBD
#'
#' @examples
#' \dontrun{
#' public_orderbook()
#' public_orderbook(product_id = "BCH-USD", level = 3)
#' public_orderbook(product_id = "BTC-EUR", level = 2)
#' }
#'
#' @export

##-----------------------------

## FUNCTION IS BROKEN and transformations do not work for Level 1 and 2

##-----------------------------
public_orderbook <- function(product_id = "LTC-USD", level = 1) {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/book")

  #fetch response----
  content <- parse_response(path = req.url,
                            query = list("level" = level))

  #transform----
  if ((level == 1) || (level == 2)) {
    content$bids <- as.numeric(content$bids)
    content$asks <- as.numeric(content$asks)
    content$bids <- t(as.data.frame(content$bids))
    content$asks <- t(as.data.frame(content$asks))
    # names(content$bids) <- c("price", "size", "num_orders")
    # names(content$asks) <- c("price", "size", "num_orders")
  } else if ((level == 3)) {
    content$bids <- as.data.frame(content$bids)
    content$asks <- as.data.frame(content$asks)
    content$bids[, c(1, 2)] <-
      apply(content$bids[, c(1, 2)], 2, as.numeric)
    content$asks[, c(1, 2)] <-
      apply(content$asks[, c(1, 2)], 2, as.numeric)
    names(content$bids) <- c("price", "size", "id")
    names(content$asks) <- c("price", "size", "id")
  }

  #return----
  return(content)
}
