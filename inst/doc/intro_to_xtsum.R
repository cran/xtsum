## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  install.packages("xtsum")
#  
#  # For dev version
#  # install.packages("devtools")
#  devtools::install_github("macosso/xtsum")

## ----message=FALSE, warning=FALSE---------------------------------------------
# Load the librarry
library(xtsum)

## -----------------------------------------------------------------------------
data("nlswork", package = "sampleSelection")
xtsum(nlswork, "hours", id = "idcode", t = "year", na.rm = T, dec = 6)

## ----fig.show='hold'----------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
xtsum(Gas)

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
xtsum(Crime, variables = c("polpc", "avgsen", "crmrte"), id = "county", t = "year")

## -----------------------------------------------------------------------------
xtsum(Gas, variables = c("lincomep", "lgaspcar"))

## ----fig.show='hold'----------------------------------------------------------
xtsum(Gas, variables = c("lincomep", "lgaspcar"), return.data.frame = TRUE)

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
between_max(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
between_max(Crime, variable = "crmrte", id = "county", t = "year")

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
between_min(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
between_min(Crime, variable = "crmrte", id = "county", t = "year")

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
between_sd(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
between_sd(Crime, variable = "crmrte", id = "county", t = "year")

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
within_max(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
within_max(Crime, variable = "crmrte", id = "county", t = "year")

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
within_min(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
within_min(Crime, variable = "crmrte", id = "county", t = "year")

## -----------------------------------------------------------------------------
data("Gasoline", package = "plm")
Gas <- pdata.frame(Gasoline, index = c("country", "year"), drop.index = TRUE)
within_sd(Gas, variable = "lgaspcar")

## -----------------------------------------------------------------------------
data("Crime", package = "plm")
within_sd(Crime, variable = "crmrte", id = "county", t = "year")

