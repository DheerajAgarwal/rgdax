#' Get all supported products (currency - pairs) by GDAX.
#'
#' @name public_info
#'
#' @description This function is a public function and will fetch all supported currency pairs or all supported currencies based on the \code{source} argument.
#'
#' @param product Optional Boolean Parameter. Default to \code{TRUE}. \code{NA} behavior is similar to default. \code{FALSE} is equivalent of currency public end point.
#'
#' @return  Dataframe with ALL supported currency pairs.  A dataframe of base currencies is returned when the flag is et as \code{FALSE}.
#'
#' @importFrom jsonlite fromJSON
#' @import RCurl
#' @import httr
#'
#' @examples
#' \dontrun{
#' public_info()
#' public_info(product = FALSE)
#' }

#'
#' @export


public_info <- function(product = TRUE) {
  #get url extension----
  if (product | is.na(product)) {
    req.url = "/products"
  } else {
    req.url = "/currencies"
  }

  #fetch response----
  content <- parse_response(path = req.url)

  #transform----
  if (product | is.na(product)) {
    content$base_min_size <- as.numeric(content$base_min_size)
    content$base_max_size <- as.numeric(content$base_max_size)
    content$quote_increment <- as.numeric(content$quote_increment)
    content$margin_enabled <- as.logical(content$margin_enabled)
  } else {
    content$min_size <- as.numeric(content$min_size)
  }
  content <- as.data.frame(content)

  #return----
  return(content)
}
