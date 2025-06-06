
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flextools <a href='https://resourcefully-dev.github.io/flextools/'><img src='man/figures/logo.png' align="right" height="139" /></a>

<!-- badges: start -->

<!-- [![CRAN status](https://www.r-pkg.org/badges/version/flextools)](https://cran.r-project.org/package=flextools) -->

[![R-CMD-check](https://github.com/resourcefully-dev/flextools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/resourcefully-dev/flextools/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/resourcefully-dev/flextools/graph/badge.svg)](https://app.codecov.io/gh/resourcefully-dev/flextools)
<!-- badges: end -->

## Overview

`flextools` package provides functions for:

- Optimizing time-series power loads for minimizing net power
  interaction with the grid or energy cost
- Smart charging simulation considering different methods to coordinate
  charging sessions, such as postpone, curtail or interrupt
- Simulation of battery systems for optimization purposes or just
  business-as-usual battery behavior

## Usage

If you want to test `flextools` with your own data set of time-series
energy, the best place to start is the [Get started
chapter](https://resourcefully-dev.github.io/flextools/articles/flextools.html)
in the package website.

## Installation

Since at this moment flextools is not yet in CRAN, you can install the
the latest development version from GitHub:

``` r
# install.packages("pak")
pak::pak("resourcefully-dev/flextools")
```

## Getting help

If you encounter a clear bug, please open an issue with a minimal
reproducible example on
[GitHub](https://github.com/resourcefully-dev/flextools/issues).

For further technical details, you can read the following academic
articles about the algorithms used in this package:

- **Increasing hosting capacity of low-voltage distribution network
  using smart charging based on local and dynamic capacity limits**.
  Sustainable Energy, Grids and Networks, vol. 41. Elsevier BV,
  p. 101626, March 2025. [DOI
  link](https://doi.org/10.1016/j.segan.2025.101626).
- **Potential benefits of scheduling electric vehicle sessions over
  limiting charging power**. CIRED Porto Workshop 2022: E-mobility and
  power distribution systems. Institution of Engineering and
  Technology, 2022. [DOI
  link](https://ieeexplore.ieee.org/abstract/document/9841653).
- **Flexibility management of electric vehicles based on user profiles:
  The Arnhem case study**. International Journal of Electrical Power and
  Energy Systems, vol. 133. Elsevier BV, p. 107195, Dec. 2021. [DOI
  link](https://doi.org/10.1016/j.ijepes.2021.107195).

## Acknowledgements

This work started under a PhD program in the the University of Girona in
collaboration with [Resourcefully](https://resourcefully.nl/), the
energy transition consulting company that currently supports the
development and maintenance.
