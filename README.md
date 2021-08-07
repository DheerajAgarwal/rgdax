# rgdax 1.2.2

[![Build Status](https://www.travis-ci.com/DheerajAgarwal/rgdax.svg?branch=master)](https://www.travis-ci.com/DheerajAgarwal/rgdax)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/rgdax)](https://cran.r-project.org/package=rgdax)
![](https://cranlogs.r-pkg.org/badges/grand-total/rgdax?color=brightgreen)

## _*Note:*_   
The version less than 1.1.0 are now *broken* and *unsupported*. Coinbase had support for the old GDAX API's only till the end of 2018. Version 1.1 and above *WILL* break the previous implementations and hence, it is recommended that all users should test this extensively with their existing applications (bulit pre-March 2021) and make changes as necessary.

This package is inspired by official and unofficial wrappers for [Coinbase Pro API](https://docs.pro.coinbase.com/#api). Please read through the api docs to gain a better understanding of how each end point is likely to work.

There are two main groups of api end points.

**Public:** All functions belonging to this group start with `public_` and can be used without any authentication.

**Auth:** This category of functions will require _API Key_, _API Secret_ and _Passphrase_ to connect successfully to the account. To get your api keys, refer to [how to create Coinbase Pro api keys](https://help.coinbase.com/en/pro/other-topics/api/how-do-i-create-an-api-key-for-coinbase-pro). The behavior of the functions will also depend upon what kind of access (view, transfer or trade) the api keys have.

## What is New in this version

[News](./NEWS.md)  

## Supported Functions

***Complete List of Supported Public Functions with Coinbase Pro end point mapping:***

|#|function|public mapping|
|-|-|-|
|01|candles|[historic rates](https://docs.pro.coinbase.com/#get-historic-rates)|
|02|daystats|[24hr stats](https://docs.pro.coinbase.com/#get-24hr-stats)|
|03|info|[currencies](https://docs.pro.coinbase.com/#get-currencies) & [products](https://docs.pro.coinbase.com/#get-products)|
|04|orderbook|[product orderbook](https://docs.pro.coinbase.com/#get-product-order-book)|
|05|ticker|[product ticker](https://docs.pro.coinbase.com/#get-product-ticker)|
|06|time|[time](https://docs.pro.coinbase.com/#time)|
|07|trades|[trades](https://docs.pro.coinbase.com/#get-trades)|

***Complete List of Supported Auth Functions with Coinbase Pro end point mapping:***

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
|14|list_orders|[list order](https://docs.pro.coinbase.com/#list-orders)|
|XX|PENDING|[get an order](https://docs.pro.coinbase.com/#get-an-order)|

**Others**  

|#|function|auth mapping|
|-|-|-|
|15|fills|[list fills](https://docs.pro.coinbase.com/#fills)|
|16|pymt_methods|[list payment methods](https://docs.pro.coinbase.com/#list-payment-methods)|

Apart from these two categories, the library also contains a few internal functions which are used across the public and the auth functions:

1. parse_response
2. auth

## Currently Unsupported Functions - AUTH

|#|function|auth mapping|
|-|-|-|
|XX|pending|[exchange limits](https://docs.pro.coinbase.com/#get-current-exchange-limits)|
|XX|pending|[list deposits](https://docs.pro.coinbase.com/#list-deposits)|
|XX|pending|[single deposit](https://docs.pro.coinbase.com/#single-deposit)|
|XX|pending|[deposut to payment method](https://docs.pro.coinbase.com/#payment-method)|
|XX|pending|[deposit from coinbase](https://docs.pro.coinbase.com/#coinbase)|
|XX|pending|[generate deposit address](https://docs.pro.coinbase.com/#generate-a-crypto-deposit-address)|
|XX|pending|[list withdrawl](https://docs.pro.coinbase.com/#list-withdrawals)|
|XX|pending|[single withdrawl](https://docs.pro.coinbase.com/#single-withdrawal)|
|XX|pending|[cancelled withdrawl](https://docs.pro.coinbase.com/#canceled-withdrawal)|
|XX|pending|[withdraw to payment method](https://docs.pro.coinbase.com/#payment-method55)|
|XX|pending|[withdraw to coinbase](https://docs.pro.coinbase.com/#coinbase56)|
|XX|pending|[withdraw to address](https://docs.pro.coinbase.com/#crypto)|
|XX|pending|[withdrawal fee](https://docs.pro.coinbase.com/#fee-estimate)|
|XX|pending|[create conversion](https://docs.pro.coinbase.com/#create-conversion)|
|XX|pending|[list payment methods](https://docs.pro.coinbase.com/#payment-methods)|
|XX|pending|[list coinbase accounts](https://docs.pro.coinbase.com/#coinbase-accounts)|
|XX|pending|[current fee](https://docs.pro.coinbase.com/#fees)|
|XX|pending|[create a new report](https://docs.pro.coinbase.com/#create-a-new-report)|
|XX|pending|[report status](https://docs.pro.coinbase.com/#get-report-status)|
|XX|pending|[list profiles](https://docs.pro.coinbase.com/#profiles26)|
|XX|pending|[get a profile](https://docs.pro.coinbase.com/#get-a-profile)|
|XX|pending|[transfer funds across profiles](https://docs.pro.coinbase.com/#create-profile-transfer)|

## Currently Unsupported Functions - PUBLIC
|#|function|mapping|
|-|-|-|
|XX|pending|[get a single product](https://docs.pro.coinbase.com/#get-single-product)|

Apart from the above listed pending functions, the current version does not support the following capabilities:  
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
install_github("DheerajAgarwal/rgdax", ref="dev")
```

## URLs   

[rgdax CRAN](https://CRAN.R-project.org/package=rgdax)

[CRAN codebase](https://github.com/DheerajAgarwal/rgdax/tree/master)

[DEV codebase](https://github.com/DheerajAgarwal/rgdax)

## License:
[MIT](https://github.com/DheerajAgarwal/rgdax/blob/master/LICENSE)

**DISCLAIMER** Use at your own risk.
