# Dengue dataset of Sri Lanka 2019

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_sri_lanka_2019)
#> Rows: 26
#> Columns: 14
#> $ province <chr> "Western", "Western", "Western", "Central", "Central", "Centr…
#> $ district <chr> "Colombo", "Gampaha", "Kalutara", "Kandy", "Matale", "Nuwara"…
#> $ jan      <dbl> 1225, 724, 372, 288, 62, 26, 132, 140, 219, 900, 34, 27, 41, …
#> $ feb      <dbl> 792, 466, 202, 229, 54, 17, 123, 91, 133, 454, 23, 16, 44, 31…
#> $ mar      <dbl> 815, 511, 250, 231, 58, 12, 156, 80, 101, 268, 16, 14, 57, 12…
#> $ apr      <dbl> 579, 429, 219, 192, 17, 7, 207, 81, 106, 161, 11, 9, 16, 3, 1…
#> $ may      <dbl> 866, 569, 384, 296, 30, 19, 772, 109, 130, 123, 12, 6, 15, 10…
#> $ june     <dbl> 1126, 890, 749, 289, 54, 22, 1155, 124, 291, 59, 9, 3, 11, 1,…
#> $ july     <dbl> 1857, 1760, 1136, 515, 60, 33, 1055, 272, 583, 90, 11, 1, 17,…
#> $ aug      <dbl> 1903, 2059, 1095, 677, 73, 31, 956, 271, 717, 110, 5, 2, 15, …
#> $ sept     <dbl> 1462, 1515, 737, 784, 62, 32, 470, 199, 383, 154, 13, 1, 28, …
#> $ oct      <dbl> 2593, 2070, 988, 1502, 275, 52, 536, 224, 493, 538, 22, 22, 6…
#> $ nov      <dbl> 4217, 3154, 1310, 2444, 902, 97, 993, 263, 543, 2641, 99, 40,…
#> $ dec      <dbl> 3283, 2426, 953, 1493, 798, 90, 823, 195, 355, 2763, 141, 130…
```

## EDA with skim

``` r

skimr::skim(dengue_sri_lanka_2019)
```

|                                                  |                       |
|:-------------------------------------------------|:----------------------|
| Name                                             | dengue_sri_lanka_2019 |
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
| jan | 0 | 1 | 214.62 | 293.18 | 25 | 50.25 | 119.5 | 209.00 | 1225 | ▇▁▁▁▁ |
| feb | 0 | 1 | 143.69 | 177.16 | 16 | 39.50 | 92.5 | 160.50 | 792 | ▇▁▁▁▁ |
| mar | 0 | 1 | 147.38 | 176.31 | 12 | 49.50 | 90.5 | 198.50 | 815 | ▇▂▁▁▁ |
| apr | 0 | 1 | 114.23 | 135.40 | 3 | 18.00 | 85.5 | 157.75 | 579 | ▇▃▁▁▁ |
| may | 0 | 1 | 163.85 | 233.86 | 6 | 24.50 | 84.0 | 128.25 | 866 | ▇▁▁▁▁ |
| june | 0 | 1 | 231.50 | 344.25 | 1 | 42.00 | 81.0 | 259.50 | 1155 | ▇▁▁▁▁ |
| july | 0 | 1 | 342.19 | 525.28 | 1 | 36.75 | 97.5 | 333.50 | 1857 | ▇▁▁▁▁ |
| aug | 0 | 1 | 367.15 | 563.27 | 2 | 33.00 | 106.5 | 397.00 | 2059 | ▇▁▁▁▁ |
| sept | 0 | 1 | 281.04 | 416.54 | 0 | 29.75 | 96.0 | 366.50 | 1515 | ▇▂▁▁▁ |
| oct | 0 | 1 | 445.12 | 653.79 | 0 | 51.25 | 227.0 | 476.00 | 2593 | ▇▁▁▁▁ |
| nov | 0 | 1 | 837.27 | 1075.38 | 0 | 144.50 | 502.5 | 848.25 | 4217 | ▇▁▁▁▁ |
| dec | 0 | 1 | 752.31 | 866.63 | 0 | 154.50 | 440.5 | 920.50 | 3283 | ▇▂▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_sri_lanka_2019)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_sri_lanka_2019)
```

[TABLE]
