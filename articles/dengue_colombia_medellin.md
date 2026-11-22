# Dengue dataset of Medellin

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_colombia_medellin)
#> Rows: 624
#> Columns: 10
#> $ cases_medellin                <dbl> 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1…
#> $ data                          <chr> "['2007', 'w01']", "['2007', 'w02']", "[…
#> $ year                          <dbl> 2007, 2007, 2007, 2007, 2007, 2007, 2007…
#> $ year_week                     <dbl> 200701, 200702, 200703, 200704, 200705, …
#> $ last_day_week                 <date> 2007-01-06, 2007-01-13, 2007-01-20, 200…
#> $ month                         <dbl> 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4…
#> $ precipitation_medellin        <dbl> 13.096688, 8.437044, 19.373165, 0.000000…
#> $ precipitation_medellin_rural  <dbl> 1.409769e+01, 6.910390e+00, 2.161697e+01…
#> $ precipitation_medellin_urbano <dbl> 12.628933, 9.067214, 18.406665, 0.000000…
#> $ temperature                   <dbl> 19.61536, 22.23400, 22.26886, 23.54600, …
```

## EDA with skim

``` r

skimr::skim(dengue_colombia_medellin)
```

|                                                  |                          |
|:-------------------------------------------------|:-------------------------|
| Name                                             | dengue_colombia_medellin |
| Number of rows                                   | 624                      |
| Number of columns                                | 10                       |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                          |
| Column type frequency:                           |                          |
| character                                        | 1                        |
| Date                                             | 1                        |
| numeric                                          | 8                        |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                          |
| Group variables                                  | None                     |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| data          |         0 |             1 |  15 |  15 |     0 |      624 |          0 |

**Variable type: Date**

| skim_variable | n_missing | complete_rate | min | max | median | n_unique |
|:---|---:|---:|:---|:---|:---|---:|
| last_day_week | 0 | 1 | 2007-01-06 | 2018-12-29 | 2012-12-29 | 622 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| cases_medellin | 0 | 1 | 77.36 | 136.78 | 0.00 | 14.00 | 26.00 | 58.00 | 820.00 | ▇▁▁▁▁ |
| year | 0 | 1 | 2012.50 | 3.45 | 2007.00 | 2009.75 | 2012.50 | 2015.25 | 2018.00 | ▇▅▅▅▇ |
| year_week | 0 | 1 | 201276.50 | 345.81 | 200701.00 | 200988.75 | 201276.50 | 201564.25 | 201852.00 | ▇▇▆▇▇ |
| month | 0 | 1 | 6.48 | 3.45 | 1.00 | 3.00 | 6.00 | 9.00 | 12.00 | ▇▅▅▆▇ |
| precipitation_medellin | 0 | 1 | 37.75 | 25.90 | 0.00 | 16.97 | 34.65 | 55.44 | 127.11 | ▇▇▅▂▁ |
| precipitation_medellin_rural | 0 | 1 | 38.08 | 26.82 | 0.00 | 16.64 | 34.33 | 56.23 | 134.96 | ▇▇▅▁▁ |
| precipitation_medellin_urbano | 0 | 1 | 37.60 | 25.58 | 0.00 | 17.15 | 34.67 | 55.06 | 122.99 | ▇▇▅▂▁ |
| temperature | 1 | 1 | 23.81 | 2.25 | 14.78 | 22.49 | 23.83 | 25.25 | 29.84 | ▁▁▇▇▂ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_colombia_medellin)
#> The following errors were returned during `tbl_summary()`:
#> ✖ For variable `last_day_week` and "p25" and "p75" statistics: * not defined
#>   for "Date" objects
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_colombia_medellin)
```

[TABLE]
