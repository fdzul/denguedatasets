# Dengue dataset of Philippines

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_philippines)
#> Rows: 1,020
#> Columns: 5
#> $ month         <chr> "January", "February", "March", "April", "May", "June", …
#> $ year          <dbl> 2016, 2016, 2016, 2016, 2016, 2016, 2016, 2016, 2016, 20…
#> $ region        <chr> "Region I", "Region I", "Region I", "Region I", "Region …
#> $ dengue_cases  <dbl> 705, 374, 276, 240, 243, 345, 1295, 1598, 1415, 1000, 55…
#> $ dengue_deaths <dbl> 1, 0, 0, 2, 1, 1, 2, 3, 3, 6, 1, 1, 0, 2, 1, 1, 0, 2, 2,…
```

## EDA with skim

``` r

skimr::skim(dengue_philippines)
```

|                                                  |                    |
|:-------------------------------------------------|:-------------------|
| Name                                             | dengue_philippines |
| Number of rows                                   | 1020               |
| Number of columns                                | 5                  |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                    |
| Column type frequency:                           |                    |
| character                                        | 2                  |
| numeric                                          | 3                  |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                    |
| Group variables                                  | None               |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| month         |         0 |             1 |   3 |   9 |     0 |       12 |          0 |
| region        |         0 |             1 |   3 |  11 |     0 |       17 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| year | 0 | 1 | 2018.00 | 1.41 | 2016 | 2017.00 | 2018.0 | 2019.00 | 2020 | ▇▇▇▇▇ |
| dengue_cases | 0 | 1 | 1124.93 | 1662.61 | 10 | 247.75 | 582.5 | 1284.25 | 21658 | ▇▁▁▁▁ |
| dengue_deaths | 0 | 1 | 16.51 | 96.36 | 0 | 1.00 | 3.0 | 7.00 | 1651 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_philippines)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_philippines)
```

[TABLE]
