# rgdax 1.0.0

[![Build Status](https://travis-ci.org/DheerajAgarwal/rgdax.png?branch=dev)](https://travis-ci.org/DheerajAgarwal/rgdax)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/rgdax)](https://cran.r-project.org/package=rgdax)
![](https://cranlogs.r-pkg.org/badges/grand-total/rgdax?color=brightgreen)

## _*Note:*_   
The previous version is now *deprecated*. Coinbase had support for the old GDAX API's till end of 2018 only. This new version is likely to break the previous ones and hence, it is recommended that all users should test this out with their existing applications and make changes as necessary.

This package is inspired by official and unofficial wrappers for [Coinbase Pro API](https://docs.pro.coinbase.com/#api).
Please read through the api docs to gain a better understanding of how each end point is likely to work.

There are two main groups of api end points.

**Public:** All functions belonging to this group start with `public_` and can be used without any authentication.

**Auth:** This category of functions will require _API Key_, _API Secret_ and _Passphrase_ to connect successfully to the account. To get your api keys, refer to [how to create Coinbase Pro api keys](https://support.pro.coinbase.com/customer/en/portal/articles/2945320-how-do-i-create-an-api-key-for-coinbase-pro-). The behavior of the functions will also depend upon what kind of access (view, transfer or trade) the api keys have.

## What is New in this version

[News](./NEWS.md)  

## Supported Functions

***Complete List of Supported Public Functions & Coinbase Pro end point mapping:***

|#|function|public mapping|
|-|-|-|
|01|candles|[historic rates](https://docs.pro.coinbase.com/#get-historic-rates)|
|02|daystats|[24hr stats](https://docs.pro.coinbase.com/#get-24hr-stats)|
|03|info|[currencies](https://docs.pro.coinbase.com/#get-currencies) & [products](https://docs.pro.coinbase.com/#get-products)|
|04|orderbook|[product orderbook](https://docs.pro.coinbase.com/#get-product-order-book)|
|05|ticker|[product ticker](https://docs.pro.coinbase.com/#get-product-ticker)|
|06|time|[time](https://docs.pro.coinbase.com/#time)|
|07|trades|[trades](https://docs.pro.coinbase.com/#get-trades)|

***Complete List of Supported Auth Functions & Coinbase Pro end point mapping:***

**Accounts**  

|#|function|auth mapping|
|-|-|-|
|08|accounts|[list accounts](https://docs.pro.coinbase.com/#list-accounts)|
|09|account|[an account](https://docs.pro.coinbase.com/#get-an-account)|
|10|account_hist|[account history](https://docs.pro.coinbase.com/#get-account-history)|
|11|holds|[holds](https://docs.pro.coinbase.com/#get-holds)|


**Orders**  

|#|function|auth mapping|
|-|-|-|
|12|add_order|[place a new order](https://docs.pro.coinbase.com/#place-a-new-order)|
|13|cancel_order|[cancel an order](https://docs.pro.coinbase.com/#cancel-an-order) & [cancel all](https://docs.pro.coinbase.com/#cancel-all)|

**Others**  

|#|function|auth mapping|
|-|-|-|
|14|fills|[list fills](https://docs.pro.coinbase.com/#fills)|
|15|pymt_methods|[list payment methods](https://docs.pro.coinbase.com/#list-payment-methods)|

Apart from these two categories, the library also contains a few internal functions which are used across the public and the auth functions:

1. parse_response
2. auth

## Currently Unsupported Functions

**Orders**  

|#|function|auth mapping|
|-|-|-|
|XX|pending|[list order](https://docs.pro.coinbase.com/#list-orders)|
|XX|pending|[get an order](https://docs.pro.coinbase.com/#get-an-order)|

**Deposits**  

|#|function|auth mapping|
|-|-|-|
|XX|pending|[payment method](https://docs.pro.coinbase.com/#payment-method)|
|XX|pending|[coinbase](https://docs.pro.coinbase.com/#coinbase)|

**Withdrawls**  

|#|function|auth mapping|
|-|-|-|
|XX|pending|[payment method](https://docs.pro.coinbase.com/#payment-method48)|
|XX|pending|[coinbase](https://docs.pro.coinbase.com/#coinbase49)|
|XX|pending|[crypto](https://docs.pro.coinbase.com/#crypto)|

**Reports**  

|#|function|auth mapping|
|-|-|-|
|XX|pending|[create a new report](https://docs.pro.coinbase.com/#create-a-new-report)|
|XX|pending|[report status](https://docs.pro.coinbase.com/#get-report-status)|

**Others**

|#|function|auth mapping|
|-|-|-|
|XX|pending|[create conversion](https://docs.pro.coinbase.com/#create-conversion)|
|XX|pending|[list coinbase accounts](https://docs.pro.coinbase.com/#list-accounts56)|
|XX|pending|[trailing volume](https://docs.pro.coinbase.com/#trailing-volume)|

Apart from the above listed pending functions, the current version does not support the following key capabilities:
1. Pagination   

## How to install:

**From CRAN**  
```
library(rgdax)
```
This is same as installing `master` branch from github.

**From Github dev**
```
library(devtools)
install_github("angelaponte/rgdax", ref="dev")
```

## URLs   

[rgdax CRAN](https://CRAN.R-project.org/package=rgdax)

[CRAN codebase](https://github.com/DheerajAgarwal/rgdax/tree/master)

[DEV codebase](https://github.com/DheerajAgarwal/rgdax)

## License:
[MIT](https://github.com/DheerajAgarwal/rgdax/blob/master/LICENSE)

**DISCLAIMER** Use at your own risk.
