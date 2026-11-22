# Dengue dataset of india

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_india)
#> Rows: 36
#> Columns: 10
#> $ num          <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17…
#> $ states       <chr> "Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", …
#> $ x2019_cases  <chr> "5286", "123", "196", "6712", "722", "992", "18219", "120…
#> $ x2019_deaths <chr> "0", "0", "0", "0", "0", "0", "17", "0", "2", "0", "0", "…
#> $ x2020_cases  <dbl> 925, 1, 33, 493, 57, 376, 1564, 1377, 21, 53, 79, 3823, 4…
#> $ x2020_deaths <dbl> 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 5, 0, 0, 0, 10, 0, 0,…
#> $ x2021_cases  <dbl> 4760, 7, 103, 633, 1086, 649, 10983, 11835, 349, 1709, 22…
#> $ x2021_deaths <dbl> 0, 0, 0, 2, 0, 0, 14, 13, 0, 4, 1, 7, 27, 0, 11, 0, 42, 0…
#> $ x2022_cases  <dbl> 6391, 114, 1826, 13972, 2679, 443, 6682, 8996, 3326, 8269…
#> $ x2022_deaths <dbl> 0, 0, 2, 32, 10, 1, 7, 18, 1, 18, 0, 9, 29, 0, 2, 0, 27, …
```

## EDA with skim

``` r

skimr::skim(dengue_india)
```

|                                                  |              |
|:-------------------------------------------------|:-------------|
| Name                                             | dengue_india |
| Number of rows                                   | 36           |
| Number of columns                                | 10           |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |              |
| Column type frequency:                           |              |
| character                                        | 3            |
| numeric                                          | 7            |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |              |
| Group variables                                  | None         |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| states        |         0 |             1 |   3 |  17 |     0 |       36 |          0 |
| x2019_cases   |         0 |             1 |   1 |   5 |     0 |       36 |          0 |
| x2019_deaths  |         0 |             1 |   1 |   2 |     0 |       13 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| num | 0 | 1 | 18.50 | 10.54 | 1 | 9.75 | 18.5 | 27.25 | 36 | ▇▇▇▇▇ |
| x2020_cases | 0 | 1 | 1238.47 | 1889.32 | 0 | 49.00 | 320.5 | 1678.75 | 8435 | ▇▁▁▁▁ |
| x2020_deaths | 0 | 1 | 1.56 | 4.20 | 0 | 0.00 | 0.0 | 0.25 | 22 | ▇▁▁▁▁ |
| x2021_cases | 0 | 1 | 5367.92 | 7510.46 | 1 | 237.25 | 1341.0 | 7727.00 | 29750 | ▇▂▁▁▁ |
| x2021_deaths | 0 | 1 | 9.61 | 19.61 | 0 | 0.00 | 1.0 | 8.75 | 96 | ▇▁▁▁▁ |
| x2022_cases | 0 | 1 | 6479.19 | 11531.89 | 26 | 488.00 | 2998.5 | 8676.50 | 67271 | ▇▁▁▁▁ |
| x2022_deaths | 0 | 1 | 8.42 | 11.84 | 0 | 0.00 | 2.5 | 10.00 | 41 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_india)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_india)
```

[TABLE]
