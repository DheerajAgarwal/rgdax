#' Get all supported products (currency - pairs) by GDAX.
#'
#' @name public_info
#'
#' @description This function is a public function and will fetch all supported currency pairs by default. The function can also fetch all the supported currencies based on the \code{source} argument.
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

# output tested on WIN. Macos pending
public_info <- function(product = TRUE) {
  #get url extension----
  if (product | is.na(product)) {
    req.url = "/products"
  } else {
    req.url = "/currencies"
  }

  #fetch response----
  response <- parse_response(path = req.url)

  #transform----
  content <- as.data.frame(fromJSON(rawToChar(response$content)))

  #return----
  return(content)
}
