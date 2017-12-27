#' 24 Hour Stats For A Given Product
#'
#' @name public_daystats
#'
#' @description This function is a public function and will fetch all bids/asks for provided currency pair (product_id). User should change the level to get the best bid/ask or to fetch all bids/asks.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'LTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @return  Dataframe with a single row of product's last 24 hour stats.
#'
#' @examples
#' \dontrun{
#' public_daystats()
#' }
#'
#' @export


public_daystats <- function(product_id = "LTC-USD") {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/stats")

  #fetch response----
  content <- parse_response(path = req.url)

  #transform----
  content <- lapply(content, as.numeric)
  content <- as.data.frame(content)

  #return----
  return(content)
}
