
<!-- README.md is generated from README.Rmd. Please edit that file -->

# denguedatasets

<!-- badges: start -->

[![R-CMD-check](https://github.com/fdzul/denguedatasets/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/fdzul/denguedatasets/actions/workflows/R-CMD-check.yaml)
[![pkgdown](https://github.com/fdzul/denguedatasets/actions/workflows/pkgdown.yaml/badge.svg)](https://fdzul.github.io/denguedatasets/)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![License:
MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE.md)
[![GitHub last
commit](https://img.shields.io/github/last-commit/fdzul/denguedatasets)](https://github.com/fdzul/denguedatasets/commits/main)
[![GitHub
issues](https://img.shields.io/github/issues/fdzul/denguedatasets)](https://github.com/fdzul/denguedatasets/issues)
[![GitHub
release](https://img.shields.io/github/v/release/fdzul/denguedatasets)](https://github.com/fdzul/denguedatasets/releases)
[![GitHub all releases
downloads](https://img.shields.io/github/downloads/fdzul/denguedatasets/total)](https://github.com/fdzul/denguedatasets/releases)
<!-- badges: end -->

`denguedatasets` is an R package that provides a curated collection of
open-access dengue fever surveillance and climate datasets for
epidemiological research and machine learning. It includes surveillance
records, climatic covariates, and mortality indicators from Bangladesh,
the Philippines, Taiwan, Sri Lanka, Brazil, Colombia, Pakistan, India,
Peru, Indonesia, and Sierra Leone, covering case counts, deaths,
case-fatality rates, and associated meteorological variables
(temperature, humidity, precipitation) suitable for spatiotemporal
analysis, outbreak prediction, machine learning, and time-series
modeling. Original sources come from Kaggle.

## Philosophy

The authors’ vision is to create data packages, functions, or a
combination of both in **Julia**, **R**, and **Python**, contributing to
the interoperability of algorithms and data to transform the information
into decisions that help solve specific problems.

In the case of data packages, the authors’ vision is to create
specialized packages focused on specific topics and subtopics. Instead
of searching through multiple diverse and heterogeneous sources, users
can access all these interesting datasets in a single package.

Specifically, in the case of the denguedasets package, each included
dataset is specialized in dengue fever, providing a valuable source of
information for academics, data scientists, statisticians, modelers,
university professors, or students interested in working with this
combination of topics.

## Installation

You can install the development version of denguedatasets from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("fdzul/denguedatasets")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(denguedatasets)
## basic example code
```

``` r
data("dengue_peru", package = "denguedatasets")
```

## License

This project is licensed under the MIT License - see the
[LICENSE.md](LICENSE.md) file for details.

## Help

If you find a bug in the code, please submit a minimal, reproducible
example on [GitHub](https://github.com/fdzul/denguedatasets/issues). For
questions and further discussion, feel free to contact me at
<felipe.dzul.m@gmail.com>.

------------------------------------------------------------------------

Please note that this project is released with a [Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this project, you
agree to abide by its terms.
