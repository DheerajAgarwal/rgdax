# NEWS

## Version?

[0.5.0](https://github.com/DheerajAgarwal/rgdax/tree/dev)  

## What's New?

#### Bug fixes:

1. `add_order` was broken for `market` & `limit` order types after the `stop order` built in. Now all orders can be successfully placed.

#### Enhancements:

[0.4.0](https://github.com/DheerajAgarwal/rgdax/tree/master)

## What's New?

Only documentation updates like fixing typos and providing clarification on usage. No changes have been made to any code or functions.

[0.3.0](https://github.com/DheerajAgarwal/rgdax/tree/rgdax_0.3)

## What's New?

1. The `fills()` function has been enhanced to include `product_id`. Now users can get the fills for a given product-currency pair.
2. The `add_order()` function has been enhanced to include `stop` and `stop_price`. Users can now add either a stop-loss or a stop-entry order. The function was also enhanced for continue adding market orders without specifying the price which was original mandatory.

