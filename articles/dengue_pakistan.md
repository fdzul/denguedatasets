# Dengue dataset of Pakistan

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_pakistan)
#> Rows: 420
#> Columns: 5
#> $ month         <chr> "January", "February", "March", "April", "May", "June", …
#> $ year          <dbl> 2016, 2016, 2016, 2016, 2016, 2016, 2016, 2016, 2016, 20…
#> $ region        <chr> "Punjab", "Punjab", "Punjab", "Punjab", "Punjab", "Punja…
#> $ dengue_cases  <dbl> 320, 280, 195, 150, 180, 250, 850, 1250, 980, 720, 450, …
#> $ dengue_deaths <dbl> 1, 0, 0, 0, 1, 2, 5, 8, 6, 4, 2, 1, 2, 1, 0, 1, 3, 4, 7,…
```

## EDA with skim

``` r

skimr::skim(dengue_pakistan)
```

|                                                  |                 |
|:-------------------------------------------------|:----------------|
| Name                                             | dengue_pakistan |
| Number of rows                                   | 420             |
| Number of columns                                | 5               |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                 |
| Column type frequency:                           |                 |
| character                                        | 2               |
| numeric                                          | 3               |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                 |
| Group variables                                  | None            |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| month         |         0 |             1 |   3 |   9 |     0 |       12 |          0 |
| region        |         0 |             1 |   2 |  11 |     0 |        7 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| year | 0 | 1 | 2018.00 | 1.42 | 2016 | 2017 | 2018 | 2019.00 | 2020 | ▇▇▇▇▇ |
| dengue_cases | 0 | 1 | 421.75 | 992.47 | 15 | 80 | 180 | 350.00 | 12450 | ▇▁▁▁▁ |
| dengue_deaths | 0 | 1 | 2.77 | 4.61 | 0 | 0 | 1 | 3.25 | 48 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_pakistan)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_pakistan)
```

[TABLE]
