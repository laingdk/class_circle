library(testthat)
source("circle_class.R", local = TRUE)

context("Tests for circle class")

test_that('the area function works', {
  expect_equal(area.circle(circle(1)), pi)
  expect_equal(area.circle(circle(2)), 4*pi)
  expect_equal(area.circle(circle(5)), 25*pi)
})

test_that('the circumference function works', {
  expect_equal(circumference.circle(circle(1)), 2*pi)
  expect_equal(circumference.circle(circle(25)), 50*pi)
  expect_equal(circumference.circle(circle(5)), 10*pi)
})

test_that('other erroneous cases', {
  expect_error(circle(1,2,0))
  expect_error(circle())
  expect_error(circle("a", "b"))
  expect_error(circle("1","2"))
})
