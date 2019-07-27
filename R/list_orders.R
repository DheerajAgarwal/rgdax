list_orders <- function(api.key,secret,passphrase,product_id="LTC-USD",status="open") {

	    #get url extension----
	    if (is.null(product_id) && is.null(status)) {
	          req.url = "/orders"
	    } else if(!is.null(product_id) && is.null(status)) {
	          product_id <- toupper(product_id)
	          req.url = paste0("/orders?product_id=", product_id)
	    } else if(is.null(product_id) && !is.null(status)) {
	          req.url = paste0("/orders?status=", status)
	    }else if(!is.null(product_id) && !is.null(status)) {
	          product_id <- toupper(product_id)		
	          req.url = paste0("/orders?product_id=", product_id, "&status=", status)
	    }
			
	    #get method----
	    method <- "GET"

	        #fetch response----
	        orders <- auth(method = method,req.url = req.url,api.key = api.key,secret = secret,passphrase = passphrase)

	        #transform----
	  #orders$price <- as.numeric(orders$price)
		#orders$size <- as.numeric(orders$size)
		#orders$fee <- as.numeric(orders$fee)
		#orders$usd_volume <- as.numeric(orders$usd_volume)
		#orders$created_at <- strptime(orders$created_at, "%Y-%m-%dT%H:%M:%OS")

			    #return----
		return(orders)
			  }

		
