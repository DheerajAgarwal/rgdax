# NEWS

## Version?

1.0.0

## What's New?

This has major changes to the approach. If you have been using version 0.2.0, then there are chances that your existing implementation can break. All attempts have been made to control the responses as well as arguments that go into the function, however not all scenarios could have been realistically tested.

1. Use of `httr` for auth functions instead of `RCurl`
2. Use of `openssl` base64 functions instead of `RCurl`

