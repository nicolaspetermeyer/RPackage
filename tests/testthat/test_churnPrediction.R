context("The highest prediction is higher then the lowest")

test_that("The highest prediction is higher then the lowest", {
  expect_true(churnPrediction(data, 15653251) >
                churnPrediction(data, 15662641))
})
