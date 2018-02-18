# Date Feb 18 2018
## First revision comments for verions 0.3.0

* There are 2 Notes




# Date Jan 08 2018  
## 3rd revision comments by maintainer  

* omitted the redundant "R" in your title
* wrote package names and software names in single quotes in title and description
* Deleted examples for unexported functions auth() and parse_response(). 

# Date Jan 08 2018  
## 3rd review comments by CRAN

* omit the redundant "R" in your title
* write package names and software names in single quotes (e.g. 'GDAX') in title and description
* There are examples for unexported functions auth() and parse_response(). Please export these functions or delete the corresponding examples.

# Date Jan 07 2018  
## Revision comments by maintainer

* 2 spell checks fixed. Others were false positives.
* Title in the description file fixed to be in Camel Case
* Code build tested using `devtools::build_win()`

Status: 1 NOTE

# Date Jan 07 2018  
## 2nd revision comments by maintainer  

* LICENSE file updated. Reference from [httr](https://github.com/r-lib/httr/blob/master/LICENSE)

# Date Jan 07 2018  
## 2nd review comments by CRAN

Please only ship the CRAN template for the MIT license.

# Date Jan 07 2018  
## Revision comments by maintainer

* 2 spell checks fixed. Others were false positives.
* Title in the description file fixed to be in Camel Case
* Code build tested using `devtools::build_win()`

Status: 1 NOTE



# Date Jan 03 2018  
## Initial Review Comments

package rgdax_0.2.0.tar.gz does not pass the incoming checks automatically, please see the pre-test at:
<https://win-builder.r-project.org/incoming_pretest/180103_223044_rgdax_020/00check.log>

Status: 1 WARNING, 4 NOTEs

# Date Jan 03 2018  
## Original Author comments

### Test environments
* local OS X install, R 3.4.3
* local Windows 10 install, R 3.4.2
* Ubuntu 14.04 (Travis-CI) R 3.3.0
* Ubuntu 14.04 (Travis-CI) R devel ()

### R CMD check results
There were no ERRORs, WARNINGs or NOTEs.
