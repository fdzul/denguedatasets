# Dengue dataset of Sri Lanka 2021

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_sri_lanka_2021)
#> Rows: 26
#> Columns: 14
#> $ province <chr> "Western", "Western", "Western", "Central", "Central", "Centr…
#> $ district <chr> "Colombo", "Gampaha", "Kalutara", "Kandy", "Matale", "Nuwara"…
#> $ jan      <dbl> 208, 123, 77, 74, 9, 7, 23, 22, 23, 14, 4, 5, 3, 0, 1276, 4, …
#> $ feb      <dbl> 388, 199, 76, 54, 9, 3, 20, 24, 37, 4, 4, 4, 11, 0, 1214, 6, …
#> $ mar      <dbl> 677, 285, 132, 82, 13, 10, 33, 34, 36, 6, 2, 5, 9, 0, 450, 6,…
#> $ apr      <dbl> 773, 268, 162, 97, 15, 8, 53, 42, 39, 5, 1, 6, 2, 0, 249, 10,…
#> $ may      <dbl> 588, 211, 99, 53, 8, 4, 7, 25, 25, 2, 1, 1, 2, 0, 115, 6, 10,…
#> $ june     <dbl> 1235, 491, 192, 110, 22, 6, 100, 68, 158, 3, 0, 1, 1, 0, 48, …
#> $ july     <dbl> 1286, 642, 304, 159, 51, 5, 56, 51, 103, 3, 1, 1, 4, 0, 21, 1…
#> $ aug      <dbl> 455, 181, 131, 86, 37, 8, 31, 24, 55, 1, 1, 1, 2, 0, 7, 0, 4,…
#> $ sept     <dbl> 572, 256, 112, 93, 15, 9, 41, 23, 35, 0, 0, 0, 0, 0, 7, 5, 10…
#> $ oct      <dbl> 1132, 685, 291, 148, 28, 10, 69, 40, 60, 1, 0, 3, 3, 1, 21, 7…
#> $ nov      <dbl> 1466, 1172, 454, 219, 39, 14, 106, 43, 82, 20, 2, 27, 7, 0, 3…
#> $ dec      <dbl> 2621, 1907, 806, 319, 44, 29, 173, 71, 100, 114, 10, 284, 10,…
```

## EDA with skim

``` r

skimr::skim(dengue_sri_lanka_2021)
```

|                                                  |                       |
|:-------------------------------------------------|:----------------------|
| Name                                             | dengue_sri_lanka_2021 |
| Number of rows                                   | 26                    |
| Number of columns                                | 14                    |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                       |
| Column type frequency:                           |                       |
| character                                        | 2                     |
| numeric                                          | 12                    |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                       |
| Group variables                                  | None                  |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| province      |         0 |             1 |   3 |  12 |     0 |        8 |          0 |
| district      |         0 |             1 |   5 |  11 |     0 |       24 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| jan | 0 | 1 | 81.62 | 247.83 | 0 | 7.50 | 22.5 | 45.75 | 1276 | ▇▁▁▁▁ |
| feb | 0 | 1 | 90.58 | 242.97 | 0 | 4.50 | 22.0 | 50.25 | 1214 | ▇▁▁▁▁ |
| mar | 0 | 1 | 88.92 | 156.45 | 0 | 9.25 | 33.5 | 77.75 | 677 | ▇▁▁▁▁ |
| apr | 0 | 1 | 86.19 | 157.48 | 0 | 8.50 | 40.5 | 89.00 | 773 | ▇▁▁▁▁ |
| may | 0 | 1 | 55.42 | 118.47 | 0 | 4.50 | 19.5 | 49.75 | 588 | ▇▁▁▁▁ |
| june | 0 | 1 | 115.27 | 250.20 | 0 | 12.00 | 41.0 | 94.50 | 1235 | ▇▁▁▁▁ |
| july | 0 | 1 | 126.62 | 272.65 | 0 | 4.25 | 44.5 | 88.00 | 1286 | ▇▁▁▁▁ |
| aug | 0 | 1 | 49.54 | 94.01 | 0 | 2.50 | 22.0 | 50.50 | 455 | ▇▁▁▁▁ |
| sept | 0 | 1 | 52.69 | 118.64 | 0 | 5.50 | 14.0 | 39.50 | 572 | ▇▁▁▁▁ |
| oct | 0 | 1 | 114.58 | 250.63 | 0 | 7.75 | 24.5 | 85.50 | 1132 | ▇▁▁▁▁ |
| nov | 0 | 1 | 175.42 | 354.36 | 0 | 17.25 | 41.0 | 103.25 | 1466 | ▇▁▁▁▁ |
| dec | 0 | 1 | 311.38 | 608.35 | 1 | 38.00 | 98.5 | 261.25 | 2621 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_sri_lanka_2021)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_sri_lanka_2021)
```

[TABLE]
