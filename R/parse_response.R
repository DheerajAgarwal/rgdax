#' Utility Function To Parse Message From GDAX API For Public Functions
#'
#' @name parse_response
#' @description An internal function to parse the api response for various public functions.
#' @param path Mandatory character parameter. This is an extension of the api end point and passed as an argument from the function calling \code{parse_response}.
#' @param query Optional named list parameter. This would consist of any named params to be passed to the api end point.
#'
#' @return  A named list or a dataframe object of the response.
#'
#' @import plyr

parse_response <- function(path, query = NA) {
  #define api base url----
  api.url <- "https://api.pro.coinbase.com"

  #create final end point----
  url <- modify_url(api.url, path = path)

  #fetch response----
  response <- httr::GET(url = url, query = query)

  print("Test~~~~~~~~~")

  print(httr::GET(url = url, query))

  #validate success----
  if (response$status_code != 200) {
    # content <- fromJSON(content(response,
    #                             as = "text"))
    # message <- content$message
    # message <- content(httr::GET(url))
    stop(message)
  } else {
    # content(httr::GET(url))
  }

  #return----
  return(response)
}
