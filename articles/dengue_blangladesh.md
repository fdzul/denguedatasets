# Dengue Dataset of Bangladesh

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_bangladesh)
#> Rows: 1,000
#> Columns: 19
#> $ gender             <chr> "Female", "Male", "Female", "Female", "Male", "Fema…
#> $ age                <dbl> 45, 17, 29, 63, 22, 36, 15, 26, 31, 10, 31, 10, 13,…
#> $ ns1                <dbl> 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, …
#> $ ig_g               <dbl> 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, …
#> $ ig_m               <dbl> 0, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, …
#> $ area               <chr> "Mirpur", "Chawkbazar", "Paltan", "Motijheel", "Gen…
#> $ area_type          <chr> "Undeveloped", "Developed", "Undeveloped", "Develop…
#> $ house_type         <chr> "Building", "Building", "Other", "Other", "Building…
#> $ district           <chr> "Dhaka", "Dhaka", "Dhaka", "Dhaka", "Dhaka", "Dhaka…
#> $ fever_duration     <dbl> 2, 1, 1, 7, 1, 0, 1, 1, 0, 1, 6, 2, 7, 4, 3, 4, 0, …
#> $ body_temperature   <dbl> 36.9, 36.5, 36.6, 38.9, 37.0, 36.9, 36.7, 37.0, 36.…
#> $ platelet_count     <dbl> 278586, 190699, 208973, 94336, 288202, 282711, 2644…
#> $ wbc_count          <dbl> 5806, 7690, 6928, 3193, 7768, 5222, 7163, 5904, 639…
#> $ joint_pain         <chr> "Severe", "None", "None", "Moderate", "None", "None…
#> $ headache           <dbl> 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, …
#> $ retro_orbital_pain <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, …
#> $ myalgia            <dbl> 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, …
#> $ rash               <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 1, …
#> $ outcome            <dbl> 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, …
```

## EDA with skim

``` r

skimr::skim(dengue_bangladesh)
```

|                                                  |                   |
|:-------------------------------------------------|:------------------|
| Name                                             | dengue_bangladesh |
| Number of rows                                   | 1000              |
| Number of columns                                | 19                |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |                   |
| Column type frequency:                           |                   |
| character                                        | 6                 |
| numeric                                          | 13                |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |                   |
| Group variables                                  | None              |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| gender        |         0 |             1 |   4 |   6 |     0 |        2 |          0 |
| area          |         0 |             1 |   5 |  19 |     0 |       36 |          0 |
| area_type     |         0 |             1 |   9 |  11 |     0 |        2 |          0 |
| house_type    |         0 |             1 |   5 |   8 |     0 |        3 |          0 |
| district      |         0 |             1 |   5 |   5 |     0 |        1 |          0 |
| joint_pain    |         0 |             1 |   4 |   8 |     0 |        3 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| age | 0 | 1 | 35.92 | 16.47 | 8 | 22.0 | 37.0 | 50.00 | 65.0 | ▇▇▇▇▆ |
| ns1 | 0 | 1 | 0.52 | 0.50 | 0 | 0.0 | 1.0 | 1.00 | 1.0 | ▇▁▁▁▇ |
| ig_g | 0 | 1 | 0.53 | 0.50 | 0 | 0.0 | 1.0 | 1.00 | 1.0 | ▇▁▁▁▇ |
| ig_m | 0 | 1 | 0.48 | 0.50 | 0 | 0.0 | 0.0 | 1.00 | 1.0 | ▇▁▁▁▇ |
| fever_duration | 0 | 1 | 3.02 | 2.44 | 0 | 1.0 | 3.0 | 5.00 | 7.0 | ▇▂▅▂▅ |
| body_temperature | 0 | 1 | 38.18 | 1.25 | 36 | 36.9 | 38.7 | 39.30 | 40.6 | ▅▅▁▇▂ |
| platelet_count | 0 | 1 | 151716.70 | 90481.67 | 26885 | 70940.0 | 95903.5 | 239466.75 | 362426.0 | ▇▁▃▅▁ |
| wbc_count | 0 | 1 | 4696.81 | 2111.81 | 1740 | 2856.5 | 3496.0 | 6671.75 | 10229.0 | ▇▂▃▃▁ |
| headache | 0 | 1 | 0.55 | 0.50 | 0 | 0.0 | 1.0 | 1.00 | 1.0 | ▆▁▁▁▇ |
| retro_orbital_pain | 0 | 1 | 0.39 | 0.49 | 0 | 0.0 | 0.0 | 1.00 | 1.0 | ▇▁▁▁▅ |
| myalgia | 0 | 1 | 0.46 | 0.50 | 0 | 0.0 | 0.0 | 1.00 | 1.0 | ▇▁▁▁▇ |
| rash | 0 | 1 | 0.38 | 0.49 | 0 | 0.0 | 0.0 | 1.00 | 1.0 | ▇▁▁▁▅ |
| outcome | 0 | 1 | 0.53 | 0.50 | 0 | 0.0 | 1.0 | 1.00 | 1.0 | ▇▁▁▁▇ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_bangladesh)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_bangladesh)
```

[TABLE]
