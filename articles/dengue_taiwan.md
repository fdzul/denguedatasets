# Dengue dataset of Taiwan

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_taiwan)
#> Rows: 107,117
#> Columns: 30
#> $ date_onset                      <date> 1998-01-02, 1998-01-03, 1998-01-13, 1…
#> $ date_confirmation               <date> NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
#> $ date_notification               <date> 1998-01-07, 1998-01-14, 1998-02-18, 1…
#> $ sex                             <chr> "M", "M", "M", "M", "M", "M", "M", "F"…
#> $ age_group                       <chr> "40-44", "30-34", "55-59", "35-39", "5…
#> $ county_living                   <chr> "Pingtung County", "Pingtung County", …
#> $ township_living                 <chr> "Pingtung City", "Donggang Township", …
#> $ village_living                  <chr> "None", "None", "None", "None", "None"…
#> $ village_living_code             <chr> "None", "None", "None", "None", "None"…
#> $ enumeration_unit                <chr> "A1320-0136-00", "A1303-0150-00", "A02…
#> $ enumeration_unit_long           <chr> "120.505898941", "120.453657460", "121…
#> $ enumeration_unit_lat            <chr> "22.464206650", "22.466338948", "24.74…
#> $ first_level_dissemination_unit  <chr> "A1320-04-008", "A1303-09-007", "A0201…
#> $ second_level_dissemination_unit <chr> "A1320-04", "A1303-09", "A0201-23", "A…
#> $ county_infected                 <chr> "None", "None", "None", "None", "None"…
#> $ township_infected               <chr> "None", "None", "None", "None", "None"…
#> $ village_infected                <chr> "None", "None", "None", "None", "None"…
#> $ village_infected_code           <chr> "None", "None", "None", "None", "None"…
#> $ imported                        <chr> "N", "Y", "Y", "N", "N", "Y", "N", "N"…
#> $ country_infected                <chr> "None", "None", "None", "None", "None"…
#> $ number_of_confirmed_cases       <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,…
#> $ serotype                        <chr> "None", "DENV2", "None", "None", "None…
#> $ moi_county_living_code          <dbl> 10013, 10013, 10002, 64, 10002, 68, 65…
#> $ moi_township_living_code        <dbl> 1001301, 1001303, 1000201, 6400800, 10…
#> $ moi_county_living               <chr> "Pingtung County", "Pingtung County", …
#> $ moi_township_living             <chr> "Pingtung City", "Donggang Township", …
#> $ moi_county_infected_code        <chr> "None", "None", "None", "None", "None"…
#> $ moi_township_infected_code      <chr> "None", "None", "None", "None", "None"…
#> $ moi_county_infected             <chr> "None", "None", "None", "None", "None"…
#> $ moi_township_infected           <chr> "None", "None", "None", "None", "None"…
```

## EDA with skim

``` r

skimr::skim(dengue_taiwan)
```

|                                                  |               |
|:-------------------------------------------------|:--------------|
| Name                                             | dengue_taiwan |
| Number of rows                                   | 107117        |
| Number of columns                                | 30            |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |               |
| Column type frequency:                           |               |
| character                                        | 24            |
| Date                                             | 3             |
| numeric                                          | 3             |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |               |
| Group variables                                  | None          |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:---|---:|---:|---:|---:|---:|---:|---:|
| sex | 0 | 1 | 1 | 1 | 0 | 3 | 0 |
| age_group | 0 | 1 | 1 | 5 | 0 | 19 | 0 |
| county_living | 0 | 1 | 4 | 17 | 0 | 23 | 0 |
| township_living | 0 | 1 | 4 | 18 | 0 | 323 | 0 |
| village_living | 0 | 1 | 4 | 17 | 0 | 2527 | 0 |
| village_living_code | 0 | 1 | 4 | 11 | 0 | 4171 | 0 |
| enumeration_unit | 0 | 1 | 4 | 13 | 0 | 22731 | 0 |
| enumeration_unit_long | 0 | 1 | 4 | 13 | 0 | 22731 | 0 |
| enumeration_unit_lat | 0 | 1 | 4 | 12 | 0 | 22729 | 0 |
| first_level_dissemination_unit | 0 | 1 | 4 | 12 | 0 | 16927 | 0 |
| second_level_dissemination_unit | 0 | 1 | 4 | 8 | 0 | 4872 | 0 |
| county_infected | 0 | 1 | 4 | 15 | 0 | 19 | 0 |
| township_infected | 0 | 1 | 4 | 18 | 0 | 193 | 0 |
| village_infected | 0 | 1 | 4 | 17 | 0 | 1338 | 0 |
| village_infected_code | 0 | 1 | 4 | 11 | 0 | 1708 | 0 |
| imported | 0 | 1 | 1 | 1 | 0 | 2 | 0 |
| country_infected | 0 | 1 | 4 | 32 | 0 | 50 | 0 |
| serotype | 0 | 1 | 4 | 5 | 0 | 5 | 0 |
| moi_county_living | 0 | 1 | 4 | 17 | 0 | 23 | 0 |
| moi_township_living | 0 | 1 | 4 | 21 | 0 | 321 | 0 |
| moi_county_infected_code | 0 | 1 | 2 | 5 | 0 | 19 | 0 |
| moi_township_infected_code | 0 | 1 | 4 | 7 | 0 | 200 | 0 |
| moi_county_infected | 0 | 1 | 4 | 15 | 0 | 19 | 0 |
| moi_township_infected | 0 | 1 | 4 | 21 | 0 | 191 | 0 |

**Variable type: Date**

| skim_variable | n_missing | complete_rate | min | max | median | n_unique |
|:---|---:|---:|:---|:---|:---|---:|
| date_onset | 0 | 1.00 | 1998-01-02 | 2024-09-10 | 2015-09-29 | 5099 |
| date_confirmation | 6279 | 0.94 | 2004-05-16 | 2024-09-10 | 2015-10-10 | 4202 |
| date_notification | 0 | 1.00 | 1998-01-07 | 2024-09-10 | 2015-10-01 | 4986 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| number_of_confirmed_cases | 0 | 1 | 1.00 | 0.00 | 1 | 1 | 1 | 1 | 2 | ▇▁▁▁▁ |
| moi_county_living_code | 476 | 1 | 544.91 | 2130.13 | 63 | 64 | 67 | 67 | 10020 | ▇▁▁▁▁ |
| moi_township_living_code | 476 | 1 | 6281958.67 | 1197911.86 | 900701 | 6400700 | 6401800 | 6703300 | 6801200 | ▁▁▁▁▇ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_taiwan)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_taiwan)
#> Warning: Data has more than 100,000 rows, consider sampling the data to reduce
#> size.
```

[TABLE]
