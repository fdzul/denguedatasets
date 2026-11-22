# Dengue Tabular Data and Satellite Images

Dataset with weekly Dengue cases, temperature and precipitation in
Medellin using the epidemiological week.

## Usage

``` r
dengue_colombia_medellin
```

## Format

A dataframe object with 624 rows and 10 variables:

- cases_medellin:

  dengue cases

- data:

  year-week

- year:

  year

- year_week:

  yearweek:

- last_day_week:

  Last day week

- month:

  month

- precipitation_medellin:

  precipitation

- precipitation_medellin_rural:

  precipitation rural

- precipitation_medellin_urbano:

  precipitation urban

- temperature:

  temperature

## Source

[https://www.kaggle.com/datasets/davidrestrepo/dengue,
https://zenodo.org/records/21499199,
https://fdzul.github.io/denguedatasets-py/,
https://fdzul.github.io/denguedatasets-py/,
https://pypi.org/project/denguedatasets/.](https://www.kaggle.com/datasets/davidrestrepo/dengue,%20https://zenodo.org/records/21499199,%20https://fdzul.github.io/denguedatasets-py/,%20https://fdzul.github.io/denguedatasets-py/,%20https://pypi.org/project/denguedatasets/.)

## Details

Dengue Challenge 2 - Make Health LATAM 2022. This challenge will provide
a dataset for each municipality in Colombia, composed of weekly dengue
cases between 2007 and 2019, along with other social and climatological
variables. You will also find a special dataset we have prepared for the
municipality of Medellín, with preprocessed climatological variables and
a compressed version of satellite images for inclusion in the models.
The dengue_colombia_medellin dataset has also been published in the
denguedataset package in Python
