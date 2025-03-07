test_that("history", {
  m <- leaflet() %>%
    addTiles(group = "base") %>%
    fitBounds(-72, 40, -70, 43) %>%
    addHistory()

  expect_is(m, "leaflet")

  deps <- findDependencies(m)
  expect_equal(deps[[length(deps) - 1]]$name, "font-awesome")
  expect_equal(deps[[length(deps)]]$name, "lfx-history")

  m <- m %>%
    goBackHistory()
  expect_equal(
    m$x$calls[[length(m$x$calls)]]$method,
    "goBackHistory"
  )

  m <- m %>% goForwardHistory()
  expect_equal(
    m$x$calls[[length(m$x$calls)]]$method,
    "goForwardHistory"
  )

  m <- m %>% clearFuture()
  expect_equal(
    m$x$calls[[length(m$x$calls)]]$method,
    "clearFuture"
  )

  m <- m %>% clearHistory()
  expect_equal(
    m$x$calls[[length(m$x$calls)]]$method,
    "clearHistory"
  )
})
