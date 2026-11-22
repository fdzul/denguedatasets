# Climatic Influence on Dengue Mortality

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_bangladesh_mortality)
#> Rows: 150
#> Columns: 15
#> $ division                    <chr> "Chittagong", "Chittagong", "Chittagong", …
#> $ year                        <dbl> 2000, 2001, 2002, 2003, 2004, 2005, 2006, …
#> $ max_temp                    <dbl> 37.34, 39.05, 37.55, 38.40, 37.10, 37.14, …
#> $ min_temp                    <dbl> 9.70, 6.85, 8.65, 8.92, 8.24, 9.38, 10.91,…
#> $ max_wind_speed              <dbl> 1.35, 1.37, 1.36, 1.23, 1.35, 1.24, 1.26, …
#> $ min_wind_speed              <dbl> 0.02, 0.03, 0.01, 0.00, 0.00, 0.02, 0.01, …
#> $ precipitation_corrected_sum <dbl> 124.72, 75.77, 92.99, 104.90, 96.00, 136.3…
#> $ all_sky_surface_total_par   <dbl> 8.6300, 8.3900, 8.2325, 8.3450, 7.8375, 8.…
#> $ root_zone_soil_wetness      <dbl> 0.4325, 0.4150, 0.4150, 0.4200, 0.4075, 0.…
#> $ surface_soil_wetness        <dbl> 0.4000, 0.3575, 0.3600, 0.3850, 0.3350, 0.…
#> $ humidity                    <dbl> 9.1675, 8.2800, 8.9200, 9.4225, 9.5900, 10…
#> $ earth_skin_temp             <dbl> 21.8000, 21.9500, 22.6300, 22.0800, 22.242…
#> $ dengu_national_cases        <dbl> 5551, 2430, 6232, 486, 3434, 1048, 2200, 4…
#> $ dengu_national_deaths       <dbl> 93, 44, 58, 10, 14, 4, 11, 0, 0, 0, 0, 6, …
#> $ dengu_national_cfr_pct      <dbl> 1.675, 1.811, 0.931, 2.058, 0.408, 0.382, …
```

## EDA with skim

``` r

skimr::skim(dengue_bangladesh_mortality)
```

|  |  |
|:---|:---|
| Name | dengue_bangladesh_mortali… |
| Number of rows | 150 |
| Number of columns | 15 |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |  |
| Column type frequency: |  |
| character | 1 |
| numeric | 14 |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |  |
| Group variables | None |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| division      |         0 |             1 |   6 |  10 |     0 |        6 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| year | 0 | 1 | 2012.00 | 7.24 | 2000.00 | 2006.00 | 2012.00 | 2018.00 | 2024.00 | ▇▇▇▇▇ |
| max_temp | 0 | 1 | 39.69 | 2.95 | 32.39 | 37.33 | 39.23 | 42.20 | 47.14 | ▁▇▆▆▂ |
| min_temp | 0 | 1 | 7.76 | 1.76 | 1.67 | 6.64 | 7.54 | 9.04 | 11.67 | ▁▁▇▅▃ |
| max_wind_speed | 0 | 1 | 5.13 | 2.06 | 1.22 | 4.39 | 5.57 | 6.44 | 9.13 | ▃▂▇▆▂ |
| min_wind_speed | 0 | 1 | 0.04 | 0.03 | 0.00 | 0.02 | 0.04 | 0.06 | 0.15 | ▇▆▂▁▁ |
| precipitation_corrected_sum | 0 | 1 | 197.47 | 170.31 | 27.80 | 93.72 | 144.50 | 252.94 | 1329.14 | ▇▂▁▁▁ |
| all_sky_surface_total_par | 0 | 1 | 7.66 | 0.48 | 6.53 | 7.34 | 7.65 | 7.99 | 9.03 | ▂▅▇▅▁ |
| root_zone_soil_wetness | 0 | 1 | 0.49 | 0.06 | 0.36 | 0.45 | 0.48 | 0.53 | 0.68 | ▂▇▆▂▁ |
| surface_soil_wetness | 0 | 1 | 0.45 | 0.08 | 0.26 | 0.40 | 0.44 | 0.50 | 0.71 | ▁▇▅▂▁ |
| humidity | 0 | 1 | 10.01 | 1.63 | 5.83 | 8.81 | 9.97 | 11.09 | 13.84 | ▁▅▇▅▂ |
| earth_skin_temp | 0 | 1 | 23.36 | 1.35 | 20.75 | 22.25 | 23.26 | 24.39 | 26.83 | ▃▇▆▅▂ |
| dengu_national_cases | 0 | 1 | 26611.08 | 66810.74 | 375.00 | 1048.00 | 2430.00 | 6232.00 | 321179.00 | ▇▁▁▁▁ |
| dengu_national_deaths | 0 | 1 | 125.80 | 346.38 | 0.00 | 2.00 | 10.00 | 58.00 | 1705.00 | ▇▁▁▁▁ |
| dengu_national_cfr_pct | 0 | 1 | 0.47 | 0.56 | 0.00 | 0.15 | 0.29 | 0.50 | 2.06 | ▇▂▁▁▂ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_bangladesh_mortality)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_bangladesh_mortality)
```

[TABLE]
