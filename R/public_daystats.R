#' 24 Hour Stats For A Given Product
#'
#' @name public_daystats
#'
#' @description This function is a public function and will fetch get 24 hr stats for the provided currency pair (product_id). Volume is in base currency units. open, high, low are in quote currency units.
#'
#' @param product_id Optional character parameter. This is a case insensitive value of the product id for which the order book is desired. Default to \code{'BTC-USD'}. For all valid product ids, refer to \code{\link{public_info}}.
#'
#' @return  Dataframe with a single row of product's last 24 hour stats.
#'
#' @examples
#' \dontrun{
#' public_daystats()
#' }
#'
#' @export

# output tested on WIN. Macos pending
public_daystats <- function(product_id = "BTC-USD") {
  #case remediation----
  product_id <- toupper(product_id)

  #get url extension----
  req.url <- paste0("/products/", product_id, "/stats")

  #fetch response----
  response <- parse_response(path = req.url)

  #transform----
  content <- as.data.frame(fromJSON(rawToChar(response$content)))

  #return----
  return(content)
}
