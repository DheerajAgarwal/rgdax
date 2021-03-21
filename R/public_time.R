#' Get GDAX API Server Time
#'
#' @name public_time
#'
#' @description Gets the server time from GDAX for reference purposes. This function does not take any arguments.
#'
#' @return  Dataframe with time in ISO and the epoch field represents decimal seconds since Unix Epoch.
#'
#' @examples
#' \dontrun{
#' public_time()
#' }
#'
#' @export

# output tested on WIN. Macos pending.
public_time <- function() {

  #get url extension----
  req.url <- "/time"

  #fetch response----
  response <- parse_response(path = req.url)

  #transform----
  content <- as.data.frame(fromJSON(rawToChar(response$content)))
  content$iso <- strptime(content$iso, "%Y-%m-%dT%H:%M:%OS")

  #return----
  return(content)
}
