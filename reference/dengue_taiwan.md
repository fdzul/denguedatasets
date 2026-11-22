# Taiwan Dengue Cases from 1998 to 2024

Daily and Regional Confirmed Cases of Dengue from 1998 to 2024

## Usage

``` r
dengue_taiwan
```

## Format

A dataframe object with 26 rows and 14 variables:

- date_onset:

  Date when symptoms first appeared

- date_confirmation:

  Date when the case was confirmed

- date_notification:

  Date when the case was reported

- sex:

  Gender of the affected individual

- age_group:

  Age category of the affected individual

- county_living:

  County where the individual resides

- township_living:

  Township where the individual resides

- village_living:

  Village where the individual resides

- village_living_code:

  Code for the village of residence

- enumeration_unit:

  Statistical unit for enumeration

- enumeration_unit_long:

  Longitude of the enumeration unit

- enumeration_unit_lat:

  Latitude of the enumeration unit

- first_level_dissemination_unit:

  Highest administrative unit for dissemination

- second_level_dissemination_unit:

  Secondary administrative unit for dissemination

- county_infected:

  County where the individual was infected

- township_infected:

  Township where the individual was infected

- village_infected:

  where the individual was infected

- village_infected_code:

  Code for the infected village

- imported:

  Indicates if the case was imported from another country

- country_infected:

  Country where the infection was acquired.

- number_of_confirmed_cases:

  Number of confirmed dengue cases

- serotype:

  Serotype of the dengue virus

- moi_county_living_code:

- moi_township_living_code:

  Code for the township of residence from the Ministry of Interior

- moi_county_living:

  County code of Ministry of Interior

- moi_township_living:

  Township code (Ministry of Interior

- moi_county_infected_code:

  Code for the infected county of Ministry of Interior

- moi_township_infected_code:

  Code for the infected township of Ministry of Interior

- moi_county_infected:

  Infected county code of Ministry of Interior

- moi_township_infected:

  Infected township code of Ministry of Interio)

## Source

[https://www.kaggle.com/datasets/taweilo/taiwan-dengue-daily-confirmed-cases-1998-2024,
https://zenodo.org/records/21499199,
https://fdzul.github.io/denguedatasets-py/,
https://fdzul.github.io/denguedatasets-py/,
https://pypi.org/project/denguedatasets/](https://www.kaggle.com/datasets/taweilo/taiwan-dengue-daily-confirmed-cases-1998-2024,%20https://zenodo.org/records/21499199,%20https://fdzul.github.io/denguedatasets-py/,%20https://fdzul.github.io/denguedatasets-py/,%20https://pypi.org/project/denguedatasets/)

## Details

The dataset contains detailed information on dengue fever cases since
1998, encompassing various aspects such as dates, geographical
locations, and serotype details. This data can be leveraged to analyze
temporal trends, spatial distribution, and the serotype of dengue cases.
It is valuable for understanding the disease's progression, its impact
across different regions, and the effectiveness of intervention measures
over time. The dengue_taiwan dataset has also been published in the
denguedataset package in Python. You can find the \[Zenodo
page\](https://zenodo.org/records/21499199), \[GitHub
repository\](https://github.com/fdzul/denguedatasets-py), \[GitHub
Pages\](https://fdzul.github.io/denguedatasets-py/), and PyPI index at
the following links https://pypi.org/project/denguedatasets/.
