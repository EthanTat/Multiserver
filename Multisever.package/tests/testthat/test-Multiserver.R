
library(Multisever.package)
library(testthat)

test_that("Function only allows positve inputs", {
  expect_error(Multiserver(c(-1, 2), 3, 4), "Arrivals, ServiceTimes must be positive & NumServers must be positive")
  expect_error(Multiserver(1, -2, 3), "Arrivals, ServiceTimes must be positive & NumServers must be positive")
  expect_error(Multiserver(1, 2, -3), "Arrivals, ServiceTimes must be positive & NumServers must be positive")
})

test_that("Function only allows inputs of the same length for Arrivals and ServiceTimes", {
  expect_error(Multiserver(c(1,2,3), 4, 5), "Arrivals and ServiceTimes must have the same length")
  expect_error(Multiserver(1, c(2, 3, 4), 5), "Arrivals and ServiceTimes must have the same length")
})
