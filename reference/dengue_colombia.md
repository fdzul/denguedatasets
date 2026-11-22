# Dengue Tabular Data and Satellite Images

Dataset with sociodemographic, socioeconomic data, dengue cases,
temperature and precipitation for all municipalities

## Usage

``` r
dengue_colombia
```

## Format

A dataframe object with 1121 rows and 1017 variables:

- municipality_code:

  Unique identifier of the municipality

- municipality:

  name of the municipality

- population:

  population:2007-2019

- cases:

  dengue cases: 2007-2019

- age0_4_percent:

  Age0-4 percent

- age5_14_percent:

  Age5-14 percent

- age15_29_percent:

  Age 15 to 29 percent

- age_30_percent:

  Age \>30 percent

- afrocolombian_population_percent:

  Percentage of Afro-Colombian population

- indian_population_percent:

  Percentage of Indian population

- peoplewith_disabilities_percent:

  Percentage of people with disabilities

- peoplewhocannotreadorwrite_percent:

  Percentage of people who cannot read or write

- secondary_higher_education_percent:

  Percentage of people who have a secondary/higher education level

- employedpopulation_percent:

  Percentage of employed population

- unemployedpopulation_percent:

  Percentage of unemployed population

- peopledoinghousework_percent:

  Percentage of people who do domestic work

- retiredpeople_percent:

  Percentage of retired people

- men_percent:

  Gender or population percentage of men

- women_percent:

  Gender or population percentage of women

- householdswithoutwateraccess_percent:

  Households without access to water

- householdswithoutinternetaccess_percent:

  Households without internet access

- buildingstratification1_percent:

  Housing stratification between 1

- buildingstratification2_percent:

  Housing stratification between 2

- buildingstratification3_percent:

  Housing stratification between 3

- buildingstratification4_percent:

  Housing stratification between 4

- buildingstratification5_percent:

  Housing stratification between 5

- buildingstratification6_percent:

  Housing stratification between 6

- numberofhospitalsper_km2:

  Number of hospitals per km2

- numberofhousesper_km2:

  Number of houses per km2

- temperature:

  temperature: ene-dec 2007-2018

- precipitation:

  precipitation: ene-dec 2007-2018

- x2007:

  Year/epiweek: year 2007-2019, week 1 to 52

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
The dengue_colombia dataset has also been published in the denguedataset
package in Python
