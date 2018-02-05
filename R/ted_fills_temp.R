gdaxFills<-function(apiKey,secret,passphrase,product_id){
  if(missing(product_id)){product_id<-'*'}

  # Libs
  require(httr)
  require(RCurl)

  # Endpoint
  apiURL <- "https://api.gdax.com"
  reqURL <- "/fills"
  meth <- "GET"

  # Official timestamp
  # timestamp<-as.character(getTime()[1,2])
  timestamp <-
    format(as.numeric(Sys.time()), digits = 13) # create nonce

  # Encode Info
  key <- base64Decode(secret, mode="raw")
  what <- paste0(timestamp, toupper(meth), reqURL)

  signa <- base64Encode(hmac(key, what, algo="sha256", raw=TRUE))

  # https://stackoverflow.com/questions/27153979/converting-nested-list-unequal-length-to-data-frame
  res <- GET(paste0(apiURL,reqURL),
             add_headers('CB-ACCESS-KEY'=apiKey,
                         'CB-ACCESS-SIGN'=signa,
                         'CB-ACCESS-TIMESTAMP'=timestamp,
                         'CB-ACCESS-PASSPHRASE'=passphrase,
                         'Content-Type'='application/json'))
  # print(http_status(res)$message)
  # lst<-content(res)
  # indx <- sapply(lst, length)
  # #indx <- lengths(lst)
  # res <- as.data.frame(do.call(rbind,lapply(lst, `length<-`,
  #                                           max(indx))))
  #
  # colnames(res) <- names(lst[[which.max(indx)]])
  # res$date <- strptime(res$created_at, "%Y-%m-%dT%H:%M:%OS")
  # res<-res[grepl(product_id,sapply(res$product_id,'[')),]
  return(res)

}
