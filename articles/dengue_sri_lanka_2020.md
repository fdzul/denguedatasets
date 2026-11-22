# Dengue dataset of Sri Lanka 2020

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_sri_lanka_2020)
#> Rows: 26
#> Columns: 14
#> $ province <chr> "Western", "Western", "Western", "Central", "Central", "Centr…
#> $ district <chr> "Colombo", "Gampaha", "Kalutara", "Kandy", "Matale", "Nuwara"…
#> $ jan      <dbl> 1693, 1049, 536, 674, 276, 77, 651, 156, 227, 1061, 64, 90, 1…
#> $ feb      <dbl> 767, 452, 273, 290, 110, 28, 249, 78, 120, 490, 31, 25, 72, 1…
#> $ mar      <dbl> 235, 128, 112, 114, 44, 16, 63, 24, 21, 154, 8, 2, 15, 2, 222…
#> $ apr      <dbl> 30, 36, 46, 36, 9, 1, 41, 6, 6, 38, 1, 1, 5, 1, 86, 3, 40, 30…
#> $ may      <dbl> 189, 95, 111, 230, 23, 2, 233, 11, 21, 112, 1, 1, 4, 1, 84, 6…
#> $ june     <dbl> 294, 188, 250, 449, 25, 11, 149, 15, 27, 58, 11, 3, 4, 2, 69,…
#> $ july     <dbl> 324, 175, 177, 595, 36, 14, 101, 24, 39, 51, 6, 8, 7, 2, 78, …
#> $ aug      <dbl> 231, 216, 101, 406, 19, 9, 60, 17, 17, 26, 3, 3, 2, 3, 40, 4,…
#> $ sept     <dbl> 192, 171, 82, 275, 15, 8, 67, 12, 15, 55, 1, 1, 1, 1, 48, 3, …
#> $ oct      <dbl> 151, 43, 37, 205, 14, 1, 27, 10, 27, 52, 3, 0, 0, 0, 236, 3, …
#> $ nov      <dbl> 59, 51, 33, 115, 14, 0, 17, 6, 17, 21, 5, 0, 2, 1, 276, 5, 5,…
#> $ dec      <dbl> 92, 51, 52, 43, 10, 1, 12, 9, 8, 39, 1, 3, 1, 4, 840, 0, 8, 1…
```

## EDA with skim

``` r

skimr::skim(dengue_sri_lanka_2020)
```

|                                                  |                       |
|:-------------------------------------------------|:----------------------|
| Name                                             | dengue_sri_lanka_2020 |
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
| jan | 0 | 1 | 446.46 | 461.29 | 0 | 142.25 | 228.5 | 622.25 | 1693 | ▇▂▁▂▁ |
| feb | 0 | 1 | 206.46 | 210.30 | 0 | 77.25 | 108.5 | 267.00 | 767 | ▇▃▁▁▁ |
| mar | 0 | 1 | 64.73 | 65.29 | 0 | 21.50 | 40.5 | 101.25 | 235 | ▇▂▂▁▁ |
| apr | 0 | 1 | 19.65 | 21.45 | 0 | 3.50 | 8.5 | 36.00 | 86 | ▇▁▃▁▁ |
| may | 0 | 1 | 59.54 | 78.00 | 0 | 6.25 | 19.5 | 92.25 | 233 | ▇▁▂▁▂ |
| june | 0 | 1 | 86.62 | 126.21 | 0 | 11.50 | 25.5 | 92.25 | 449 | ▇▁▁▁▁ |
| july | 0 | 1 | 88.00 | 141.86 | 0 | 10.75 | 24.0 | 95.25 | 595 | ▇▁▁▁▁ |
| aug | 0 | 1 | 59.96 | 95.89 | 0 | 4.25 | 20.0 | 63.00 | 406 | ▇▁▁▁▁ |
| sept | 0 | 1 | 46.46 | 68.39 | 0 | 4.00 | 14.5 | 55.00 | 275 | ▇▁▁▁▁ |
| oct | 0 | 1 | 39.54 | 61.91 | 0 | 3.50 | 13.5 | 37.00 | 236 | ▇▁▁▁▁ |
| nov | 0 | 1 | 29.62 | 56.39 | 0 | 5.00 | 11.0 | 30.00 | 276 | ▇▁▁▁▁ |
| dec | 0 | 1 | 50.62 | 162.45 | 0 | 4.25 | 11.0 | 30.75 | 840 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_sri_lanka_2020)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_sri_lanka_2020)
```

[TABLE]
