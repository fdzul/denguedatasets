# Climatic Influence on Dengue Mortality

This dataset explores the spatio-temporal interaction between climate
variability and dengue outbreaks across six divisions of Bangladesh from
2000 to 2024. It connects meteorological parameters with epidemiological
indicators (cases, deaths, and case-fatality rate) to uncover how
changing weather patterns influence dengue mortality

## Usage

``` r
dengue_bangladesh_mortality
```

## Format

A dataframe object with 150 rows and 15 variables:

- division:

  Divisions: Chittagong, Rajshahi, Khulna, Sylhet, Barishal, Rangpur

- year:

  year covered: 2000-2024

- max_temp:

  Highest daily temperature influencing mosquito activity and virus
  transmission

- min_temp:

  Lowest daily temperature affecting mosquito survival and breeding.

- max_wind_speed:

  Measures airflow strength, which impacts mosquito movement and
  dispersion

- min_wind_speed:

  Measures airflow strength, which impacts mosquito movement and
  dispersion

- precipitation_corrected_sum:

  Total rainfall contributing to water accumulation for mosquito
  breeding sites

- all_sky_surface_total_par:

- root_zone_soil_wetness:

- surface_soil_wetness:

  Moisture level in the soil reflecting wet conditions favorable for
  breeding habitats.

- humidity:

  Atmospheric moisture level that increases mosquito lifespan and biting
  frequency

- earth_skin_temp:

  Land surface temperature indicating environmental heat that
  accelerates mosquito development

- dengue_national_cases:

  Number of reported dengue infections in a given period.

- dengue_national_deaths:

  Total number of dengue-related fatalities

- dengue_national_cfr_pct:

  Case Fatality Rate showing the percentage of infected individuals who
  died

\#' @source
[https://www.kaggle.com/datasets/gazijahin/climatic-influence-on-dengue-mortality-2000-2024,
https://zenodo.org/records/21499199,
https://fdzul.github.io/denguedatasets-py/,
https://fdzul.github.io/denguedatasets-py/,
https://pypi.org/project/denguedatasets/.](https://www.kaggle.com/datasets/gazijahin/climatic-influence-on-dengue-mortality-2000-2024,%20https://zenodo.org/records/21499199,%20https://fdzul.github.io/denguedatasets-py/,%20https://fdzul.github.io/denguedatasets-py/,%20https://pypi.org/project/denguedatasets/.)

## Details

The dengue_bangladesh dataset has also been published in the
denguedataset package in Python. You can find the Zenodo page
https://zenodo.org/records/21499199, GitHub repository
https://github.com/fdzul/denguedatasets-py, GitHub Pages
https://fdzul.github.io/denguedatasets-py/, and PyPI index at the
following links https://pypi.org/project/denguedatasets/.
