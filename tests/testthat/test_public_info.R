library(rgdax)

# Scope
context("Valid Response Type")

test_that("Products or currencies are returned", {
  expect_equal(class(public_info()), "data.frame")
  expect_equal(class(public_info(FALSE)), "data.frame")
})
