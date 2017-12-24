# rgdax

This package is inspired by official and unofficial wrappers for [GDAX API](https://docs.gdax.com/#api).
Please read through the api docs to gain a better understanding of how each end point is likely to work.

There are two main groups of api end points.

**Public:** All functions belonging to this group start with `public_` and can be used without any authentication.   
**Auth:** This category of functions will require _API Key_, _API Secret_ and _Passphrase_ to connect successfully to the account. To get your api keys, refer to [how to create GDAX api keys](
    https://support.gdax.com/customer/en/portal/articles/2425383-how-can-i-create-an-api-key-for-gdax-). The behavior of the functions will also depend upon what kind of access (view, trade or manage) the api keys have.
    
***Supported Public Functions:***  
1. candles
2. daystats
3. info
4. orderbook
5. ticker
6. time
7. trades

***Supported Auth Functions:*** 
1. account
2. accounts
3. account_hist
4. add_order
5. fills
6. funding
7. holds
8. orders
9. profile
10. pymt_methods

Apart from these two categories, the library also contains a few internal functions which are used across the public and the auth functions:  
1. parse_response
2. auth

## Limitations:  
The current version does not support the following capabilities:  
1. Pagination
2. Ability to cancel the order
3. Make deposits or withdrawls.

## How to install:  
TBD

## Some Inspirations  
[Unofficial Python GDAX Wrapper](https://github.com/danpaquin/gdax-python)  # The real reason I started this project.  
[coinbaseexchangeenterorder-r](https://gist.github.com/gsee/b20b3b9893cd74e462a8) # Helped me break the auth calls.  
[MTDO's Shiny App](https://github.com/mtdo/shiny-gdax) # for the data cleaning of public functions.  

## License:
[MIT](https://github.com/DheerajAgarwal/rgdax/blob/master/LICENSE)

**DISCLAIMER** Use at your own risk. 
