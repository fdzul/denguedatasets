# Dengue dataset of Jakarta

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_jakarta)
#> Rows: 2,922
#> Columns: 14
#> $ id      <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,…
#> $ reg     <chr> "jak-pus", "jak-pus", "jak-pus", "jak-pus", "jak-pus", "jak-pu…
#> $ date    <chr> "01-01-2021", "01-01-2022", "01-01-2023", "01-01-2024", "01-02…
#> $ tn      <chr> "25", "25.0", "23.6", "26.4", "24.8", "26.0", "25.4", "25.0", …
#> $ tx      <chr> "30.0", "32.4", "29.8", "32.2", "30.4", "31.2", "30.2", "31.6"…
#> $ tavg    <chr> "27.0", "28.9", "26.3", "29.6", "27.1", "28.5", "27.0", "27.8"…
#> $ rh_avg  <dbl> 80, 75, 87, 77, 82, 81, 85, 83, 72, 86, 88, 77, 76, 76, 74, 78…
#> $ rr      <chr> "13.8", "0.5", "14.5", "1.8", "0.4", "-", "0.5", "8888", "0.2"…
#> $ ss      <dbl> 0.0, 4.0, 0.0, 5.6, 0.2, 5.0, 0.0, 2.2, 3.5, 1.2, 1.0, 0.0, 7.…
#> $ ff_x    <dbl> 4, 3, 4, 4, 7, 3, 4, 7, 8, 5, 8, 5, 3, 3, 4, 4, 3, 3, 3, 4, 5,…
#> $ ddd_x   <dbl> 310, 260, 320, 290, 340, 350, 320, 340, 330, 270, 315, 330, 26…
#> $ ff_avg  <dbl> 1, 1, 1, 1, 2, 1, 1, 1, 3, 1, 1, 2, 1, 0, 2, 1, 1, 1, 0, 1, 1,…
#> $ ddd_car <chr> "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "W…
#> $ cases   <dbl> 0, 0, 3, 3, 1, 5, 6, 3, 2, 7, 4, 4, 0, 10, 6, 18, 3, 8, 3, 22,…
```

## EDA with skim

``` r

skimr::skim(dengue_jakarta)
```

|                                                  |                |
|:-------------------------------------------------|:---------------|
| Name                                             | dengue_jakarta |
| Number of rows                                   | 2922           |
| Number of columns                                | 14             |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                |
| Column type frequency:                           |                |
| character                                        | 7              |
| numeric                                          | 7              |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                |
| Group variables                                  | None           |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| reg           |         0 |             1 |   6 |   7 |     0 |        2 |          0 |
| date          |         0 |             1 |  10 |  10 |     0 |     1461 |          0 |
| tn            |         0 |             1 |   1 |   4 |     0 |       72 |          0 |
| tx            |         0 |             1 |   1 |   4 |     0 |       94 |          0 |
| tavg          |         0 |             1 |   1 |   4 |     0 |       73 |          0 |
| rr            |         0 |             1 |   1 |   6 |     0 |      385 |          0 |
| ddd_car       |         0 |             1 |   1 |   2 |     0 |        9 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| id | 0 | 1.00 | 1474.99 | 850.75 | 1 | 737.25 | 1474.5 | 2209.75 | 2947.0 | ▇▇▇▇▇ |
| rh_avg | 7 | 1.00 | 77.49 | 5.92 | 56 | 74.00 | 78.0 | 82.00 | 96.0 | ▁▃▇▅▁ |
| ss | 36 | 0.99 | 4.93 | 2.87 | 0 | 2.50 | 5.4 | 7.30 | 11.2 | ▆▆▇▇▂ |
| ff_x | 1 | 1.00 | 5.19 | 1.73 | 0 | 4.00 | 5.0 | 6.00 | 25.0 | ▇▅▁▁▁ |
| ddd_x | 1 | 1.00 | 219.81 | 120.56 | 0 | 80.00 | 280.0 | 320.00 | 360.0 | ▃▂▁▂▇ |
| ff_avg | 1 | 1.00 | 1.70 | 0.89 | 0 | 1.00 | 2.0 | 2.00 | 6.0 | ▇▇▂▁▁ |
| cases | 0 | 1.00 | 7.03 | 8.36 | 0 | 2.00 | 4.0 | 9.00 | 65.0 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_jakarta)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_jakarta)
```

[TABLE]
