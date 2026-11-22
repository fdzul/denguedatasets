# Brazil Dengue Dataset 2000-2019

The dataset supplied comprises a comprehensive collection of information
pertaining to numerous geographical and environmental characteristics
across microregions in Brazil from 2000 to 2019. Microregion codes and
names, mesoregion codes and names, state codes and names, region codes
and names, biome codes and names, ecozone codes and names, climate
regimes, months, years, times, dengue cases, population estimates,
population density, maximum and minimum temperatures, Palmer's drought
severity index, urban population percentages, access to water network
percentages, and reported water shortage frequency are all included in
the dataset. This information is linked to individual microregions and
provides insights into population dynamics, climatic patterns,
urbanization trends, water resources, and disease occurrences.

## Usage

``` r
dengue_brazil
```

## Format

A dataframe object with 26 rows and 4 variables:

- micro_code:

  Unique ID number given by IBGE to each microregion (5 digits)

- micro_name:

  Name of each microregion

- micro_name_ibge:

  Name of each microregion from IBGE sources

- meso_code:

  Unique ID number given by IBGE to each mesoregion: 4 digits

- meso_name:

  Name of each mesoregion

- state_code:

  Unique ID number given by IBGE to each state

- state_name:

  Name of state

- region_code:

  Region code

- region_name:

  Region name

- biome_code:

  Biome code

- biome_name:

  Biome name

- ecozone_code:

  Ecozone code: same as biome apart from Atlantic Rainforest, biome code
  6, which has been separated

- ecozone_name:

  Ecozone name: same as biome apart from Atlantic Rainforest, which has
  been separated into NE..

- main_climate:

  Most prevalent climate regime in the microregion. Based on Koppen
  Geiger climate regimes

- month:

  Calendar month index, 1 = January, to, 12 = December

- year:

  Year: 2000-2019

- time:

  Time index starting at 1 for January 2000

- dengue_cases:

  Number of notified dengue cases registered in the notifiable diseases
  system in Brazil by SINAN

- population:

  Estimated population, based on projections calculated using the 2000
  and 2010 censuses, and counts

- pop_density:

  Population density: number of people per km2

- tmax:

  Monthly average daily maximum temperature; gridded values at a 0.5°
  resolution averaged across eac

- tmin:

  Monthly average daily minimum temperature; gridded values at a 0.5°
  resolution averaged across eac

- pdsi:

  Self-calibrated Palmer drought severity index for each microregion

- urban:

  Percentage of inhabitants living in urban areas according to the 2010
  census

- water_network:

  Percentage of inhabitants with access to the piped water network
  according to the 2010 census

- water_shortage:

  Frequency of reported water shortages per microregion between 2000 -
  2016

## Source

[https://www.kaggle.com/datasets/raomuhammadsaeedali/brazil-dengue-dataset-2000-2019,
https://zenodo.org/records/21499199,
https://fdzul.github.io/denguedatasets-py/,
https://fdzul.github.io/denguedatasets-py/,
https://pypi.org/project/denguedatasets/.](https://www.kaggle.com/datasets/raomuhammadsaeedali/brazil-dengue-dataset-2000-2019,%20https://zenodo.org/records/21499199,%20https://fdzul.github.io/denguedatasets-py/,%20https://fdzul.github.io/denguedatasets-py/,%20https://pypi.org/project/denguedatasets/.)

## Details

The dengue_brazil dataset has also been published in the denguedataset
package in Python
