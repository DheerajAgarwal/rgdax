# rgdax 1.0.0

[![Build Status](https://travis-ci.org/DheerajAgarwal/rgdax.png?branch=dev)](https://travis-ci.org/DheerajAgarwal/rgdax)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/rgdax)](https://cran.r-project.org/package=rgdax)
![](https://cranlogs.r-pkg.org/badges/grand-total/rgdax?color=brightgreen)

## _*Note:*_   
The previous version is now *deprecated*. Coinbase has support for the old GDAX API's till end of 2018 and version 0.6 package should continue to work till that time. This new version is likely to break the previous ones and hence, it is recommended that all users shold test this out with their existing applications and make changes as necessary.

This package is inspired by official and unofficial wrappers for [Coinbase Pro API](https://docs.pro.coinbase.com/#api).
Please read through the api docs to gain a better understanding of how each end point is likely to work.

There are two main groups of api end points.

**Public:** All functions belonging to this group start with `public_` and can be used without any authentication.

**Auth:** This category of functions will require _API Key_, _API Secret_ and _Passphrase_ to connect successfully to the account. To get your api keys, refer to [how to create Coinbase Pro api keys](https://support.pro.coinbase.com/customer/en/portal/articles/2945320-how-do-i-create-an-api-key-for-coinbase-pro-). The behavior of the functions will also depend upon what kind of access (view, trade or manage) the api keys have.
    
## What is New in this version

[News](./NEWS.md)  

## Supported Functions

***Complete List of Supported Public Functions:***

1. candles
2. daystats
3. info
4. orderbook
5. ticker
6. time
7. trades

***Complete List of Supported Auth Functions:***

1. account_hist
2. account
3. accounts
4. add_order
5. cancel_order
6. fills
7. holds
8. profile
9. pymt_methods

Apart from these two categories, the library also contains a few internal functions which are used across the public and the auth functions:

1. parse_response
2. auth

## Limitations:
The current version does not support the following key capabilities:
1. Pagination   
2. Make deposits or withdrawls

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
[github CRAN](https://github.com/DheerajAgarwal/rgdax/tree/master)

[github DEV](https://github.com/DheerajAgarwal/rgdax)

## License:
[MIT](https://github.com/DheerajAgarwal/rgdax/blob/master/LICENSE)

**DISCLAIMER** Use at your own risk.
