# Dengue dataset of Colombia

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

`dengue_colombia` has one row per municipality and 1017 columns, in four
groups:

``` r

cols <- names(dengue_colombia)
group <- dplyr::case_when(
  grepl("^temperature_", cols) ~ "monthly temperature (2007-2018)",
  grepl("^precipitation_", cols) ~ "monthly precipitation (2007-2018)",
  grepl("^x[0-9]{4}_w[0-9]+$", cols) ~ "weekly dengue cases (2007-2019)",
  TRUE ~ "municipality, annual population and cases, sociodemographic"
)
table(group)
#> group
#>                           monthly precipitation (2007-2018) 
#>                                                         144 
#>                             monthly temperature (2007-2018) 
#>                                                         144 
#> municipality, annual population and cases, sociodemographic 
#>                                                          53 
#>                             weekly dengue cases (2007-2019) 
#>                                                         676
```

The monthly climate and the weekly cases are long series of numeric
columns, so the summaries below use the first group, the annual and
sociodemographic variables; the other columns have the same structure.

``` r

x <- dengue_colombia[, group == "municipality, annual population and cases, sociodemographic"]
```

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(x)
#> Rows: 1,121
#> Columns: 53
#> $ municipality_code                       <dbl> 5001, 5002, 5004, 5021, 5030, …
#> $ municipality                            <chr> "Medellín", "Abejorral", "Abri…
#> $ population2007                          <dbl> 2286126, 20643, 2261, 3935, 27…
#> $ population2008                          <dbl> 2309689, 20944, 2290, 4020, 28…
#> $ population2009                          <dbl> 2331389, 21197, 2321, 4096, 28…
#> $ population2010                          <dbl> 2353410, 21355, 2353, 4171, 28…
#> $ population2011                          <dbl> 2379920, 20973, 2386, 4244, 28…
#> $ population2012                          <dbl> 2410046, 20067, 2424, 4337, 28…
#> $ population2013                          <dbl> 2428850, 19732, 2471, 4419, 28…
#> $ population2014                          <dbl> 2436071, 19796, 2488, 4467, 28…
#> $ population2015                          <dbl> 2431666, 19897, 2514, 4511, 28…
#> $ population2016                          <dbl> 2420516, 19979, 2539, 4543, 29…
#> $ population2017                          <dbl> 2414616, 20047, 2593, 4570, 29…
#> $ population2018                          <dbl> 2427129, 20367, 2695, 4657, 30…
#> $ population2019                          <dbl> 2483545, 20258, 2710, 4669, 30…
#> $ cases2007                               <dbl> 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, …
#> $ cases2008                               <dbl> 902, 1, 0, 0, 2, 3, 3, 0, 0, 7…
#> $ cases2009                               <dbl> 413, 0, 0, 0, 1, 0, 1, 0, 0, 0…
#> $ cases2010                               <dbl> 15570, 79, 3, 5, 297, 0, 40, 1…
#> $ cases2011                               <dbl> 802, 1, 0, 0, 13, 1, 3, 0, 0, …
#> $ cases2012                               <dbl> 713, 0, 0, 0, 3, 3, 0, 0, 0, 1…
#> $ cases2013                               <dbl> 2342, 0, 0, 1, 3, 2, 5, 0, 0, …
#> $ cases2014                               <dbl> 3161, 0, 0, 0, 3, 3, 9, 1, 2, …
#> $ cases2015                               <dbl> 3785, 2, 0, 0, 120, 5, 14, 1, …
#> $ cases2016                               <dbl> 17306, 5, 2, 5, 196, 4, 188, 5…
#> $ cases2017                               <dbl> 2100, 1, 0, 0, 17, 2, 6, 0, 0,…
#> $ cases2018                               <dbl> 1172, 2, 1, 0, 3, 3, 2, 0, 0, …
#> $ cases2019                               <dbl> 1276, 0, 2, 0, 16, 6, 1, 0, 0,…
#> $ age0_4_percent                          <dbl> 5.16, 5.24, 6.07, 6.59, 5.42, …
#> $ age5_14_percent                         <dbl> 11.96, 14.92, 14.08, 15.73, 13…
#> $ age15_29_percent                        <dbl> 26.71, 22.29, 23.76, 21.91, 25…
#> $ age_30_percent                          <dbl> 56.16, 57.55, 56.09, 55.77, 55…
#> $ afrocolombian_population_percent        <dbl> 2.51, 0.35, 1.99, 0.31, 0.48, …
#> $ indian_population_percent               <dbl> 0.09, 0.01, 0.00, 0.00, 0.03, …
#> $ peoplewith_disabilities_percent         <dbl> 6.27, 16.05, 16.72, 8.10, 9.02…
#> $ peoplewhocannotreadorwrite_percent      <dbl> 3.17, 9.89, 6.72, 8.75, 7.68, …
#> $ secondary_higher_education_percent      <dbl> 67.43, 33.65, 45.72, 38.79, 51…
#> $ employedpopulation_percent              <dbl> 43.23, 39.60, 36.78, 37.07, 39…
#> $ unemployedpopulation_percent            <dbl> 5.64, 0.89, 1.85, 1.25, 3.36, …
#> $ peopledoinghousework_percent            <dbl> 13.91, 26.37, 24.50, 25.89, 21…
#> $ retiredpeople_percent                   <dbl> 5.47, 1.43, 1.16, 0.86, 3.56, …
#> $ men_percent                             <dbl> 47.01, 51.93, 54.24, 49.80, 49…
#> $ women_percent                           <dbl> 52.99, 48.07, 45.76, 50.20, 50…
#> $ householdswithoutwateraccess_percent    <dbl> 1.44, 21.87, 24.03, 17.06, 3.3…
#> $ householdswithoutinternetaccess_percent <dbl> 29.47, 56.27, 62.35, 54.61, 56…
#> $ buildingstratification1_percent         <dbl> 12.1117, 31.3520, 21.5705, 17.…
#> $ buildingstratification2_percent         <dbl> 31.2817, 33.8306, 39.1675, 38.…
#> $ buildingstratification3_percent         <dbl> 26.0471, 2.0439, 4.3519, 4.821…
#> $ buildingstratification4_percent         <dbl> 9.0279, 0.0352, 0.0946, 0.1854…
#> $ buildingstratification5_percent         <dbl> 6.4855, 0.0117, 0.1892, 0.0464…
#> $ buildingstratification6_percent         <dbl> 3.7062, 0.0000, 0.1892, 0.0464…
#> $ numberofhospitalsper_km2                <dbl> 1.555263, 0.002012, 0.000000, …
#> $ numberofhousesper_km2                   <dbl> 2102.057895, 11.945674, 2.5482…
```

## EDA with skim

``` r

skimr::skim(x)
```

|                                                  |      |
|:-------------------------------------------------|:-----|
| Name                                             | x    |
| Number of rows                                   | 1121 |
| Number of columns                                | 53   |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |      |
| Column type frequency:                           |      |
| character                                        | 1    |
| numeric                                          | 52   |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |      |
| Group variables                                  | None |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| municipality  |         0 |             1 |   3 |  27 |     0 |     1036 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| municipality_code | 0 | 1 | 38666.50 | 26534.11 | 5001.00 | 15676.00 | 25839.00 | 66456.00 | 99773.00 | ▇▃▃▃▁ |
| population2007 | 0 | 1 | 38300.83 | 234946.51 | 0.00 | 6373.00 | 12004.00 | 24222.00 | 6866363.00 | ▇▁▁▁▁ |
| population2008 | 0 | 1 | 38726.60 | 237234.05 | 127.00 | 6505.00 | 12206.00 | 24642.00 | 6936977.00 | ▇▁▁▁▁ |
| population2009 | 0 | 1 | 39145.28 | 239412.24 | 127.00 | 6583.00 | 12325.00 | 24831.00 | 7003434.00 | ▇▁▁▁▁ |
| population2010 | 0 | 1 | 39560.12 | 241507.91 | 129.00 | 6632.00 | 12528.00 | 25162.00 | 7065669.00 | ▇▁▁▁▁ |
| population2011 | 0 | 1 | 39958.86 | 243484.51 | 144.00 | 6689.00 | 12603.00 | 25480.00 | 7119281.00 | ▇▁▁▁▁ |
| population2012 | 0 | 1 | 40336.05 | 245277.54 | 159.00 | 6586.00 | 12568.00 | 25705.00 | 7162261.00 | ▇▁▁▁▁ |
| population2013 | 0 | 1 | 40697.79 | 246648.81 | 172.00 | 6496.00 | 12672.00 | 25957.00 | 7197326.00 | ▇▁▁▁▁ |
| population2014 | 0 | 1 | 41053.13 | 247693.08 | 192.00 | 6520.00 | 12679.00 | 26272.00 | 7226652.00 | ▇▁▁▁▁ |
| population2015 | 0 | 1 | 41418.68 | 248572.54 | 210.00 | 6433.00 | 12680.00 | 26335.00 | 7253823.00 | ▇▁▁▁▁ |
| population2016 | 0 | 1 | 41836.96 | 249681.61 | 224.00 | 6428.00 | 12715.00 | 26264.00 | 7290415.00 | ▇▁▁▁▁ |
| population2017 | 0 | 1 | 42289.61 | 251057.06 | 243.00 | 6429.00 | 12672.00 | 26480.00 | 7333415.00 | ▇▁▁▁▁ |
| population2018 | 0 | 1 | 43048.59 | 253936.39 | 279.00 | 6583.00 | 12797.00 | 26890.00 | 7412566.00 | ▇▁▁▁▁ |
| population2019 | 0 | 1 | 44063.01 | 259997.04 | 288.00 | 6637.00 | 12817.00 | 27517.00 | 7592871.00 | ▇▁▁▁▁ |
| cases2007 | 0 | 1 | 36.55 | 229.11 | 0.00 | 0.00 | 1.00 | 9.00 | 5223.00 | ▇▁▁▁▁ |
| cases2008 | 0 | 1 | 32.18 | 162.96 | 0.00 | 0.00 | 2.00 | 10.00 | 2816.00 | ▇▁▁▁▁ |
| cases2009 | 0 | 1 | 46.34 | 286.42 | 0.00 | 0.00 | 2.00 | 12.00 | 6335.00 | ▇▁▁▁▁ |
| cases2010 | 0 | 1 | 138.50 | 784.62 | 0.00 | 1.00 | 10.00 | 54.00 | 15570.00 | ▇▁▁▁▁ |
| cases2011 | 0 | 1 | 26.65 | 111.91 | 0.00 | 0.00 | 2.00 | 12.00 | 1724.00 | ▇▁▁▁▁ |
| cases2012 | 0 | 1 | 47.72 | 211.45 | 0.00 | 0.00 | 3.00 | 23.00 | 3128.00 | ▇▁▁▁▁ |
| cases2013 | 0 | 1 | 111.23 | 660.81 | 0.00 | 1.00 | 9.00 | 51.00 | 17539.00 | ▇▁▁▁▁ |
| cases2014 | 0 | 1 | 93.47 | 399.64 | 0.00 | 1.00 | 8.00 | 51.00 | 5855.00 | ▇▁▁▁▁ |
| cases2015 | 0 | 1 | 85.50 | 510.50 | 0.00 | 1.00 | 8.00 | 44.00 | 14523.00 | ▇▁▁▁▁ |
| cases2016 | 0 | 1 | 89.18 | 797.26 | 0.00 | 1.00 | 8.00 | 37.00 | 19414.00 | ▇▁▁▁▁ |
| cases2017 | 0 | 1 | 22.34 | 137.78 | 0.00 | 0.00 | 2.00 | 10.00 | 3710.00 | ▇▁▁▁▁ |
| cases2018 | 0 | 1 | 38.81 | 162.56 | 0.00 | 0.00 | 2.00 | 14.00 | 2687.00 | ▇▁▁▁▁ |
| cases2019 | 0 | 1 | 113.15 | 443.30 | 0.00 | 1.00 | 10.00 | 75.00 | 8258.00 | ▇▁▁▁▁ |
| age0_4_percent | 0 | 1 | 7.32 | 1.98 | 3.28 | 5.88 | 6.97 | 8.47 | 23.00 | ▇▆▁▁▁ |
| age5_14_percent | 0 | 1 | 17.85 | 4.16 | 9.27 | 14.99 | 17.02 | 19.88 | 48.15 | ▇▇▁▁▁ |
| age15_29_percent | 0 | 1 | 24.62 | 2.94 | 13.98 | 22.79 | 24.94 | 26.52 | 47.18 | ▁▇▂▁▁ |
| age_30_percent | 0 | 1 | 50.21 | 7.75 | 19.13 | 45.16 | 51.04 | 56.03 | 69.50 | ▁▁▆▇▂ |
| afrocolombian_population_percent | 0 | 1 | 7.05 | 19.31 | 0.00 | 0.18 | 0.41 | 1.64 | 97.30 | ▇▁▁▁▁ |
| indian_population_percent | 0 | 1 | 7.35 | 19.07 | 0.00 | 0.03 | 0.14 | 2.71 | 98.58 | ▇▁▁▁▁ |
| peoplewith_disabilities_percent | 0 | 1 | 9.90 | 5.61 | 0.00 | 5.73 | 8.69 | 13.12 | 48.48 | ▇▅▁▁▁ |
| peoplewhocannotreadorwrite_percent | 0 | 1 | 8.92 | 3.85 | 1.47 | 6.33 | 8.46 | 10.87 | 34.28 | ▇▇▁▁▁ |
| secondary_higher_education_percent | 0 | 1 | 44.01 | 9.31 | 15.02 | 37.73 | 42.56 | 49.26 | 77.33 | ▁▆▇▂▁ |
| employedpopulation_percent | 0 | 1 | 33.31 | 7.69 | 0.83 | 29.25 | 34.26 | 38.49 | 51.58 | ▁▁▅▇▂ |
| unemployedpopulation_percent | 0 | 1 | 4.46 | 2.89 | 0.50 | 2.53 | 3.93 | 5.64 | 37.20 | ▇▁▁▁▁ |
| peopledoinghousework_percent | 0 | 1 | 22.12 | 5.64 | 6.47 | 18.69 | 21.79 | 24.67 | 51.70 | ▁▇▂▁▁ |
| retiredpeople_percent | 0 | 1 | 1.20 | 1.42 | 0.00 | 0.26 | 0.64 | 1.54 | 10.17 | ▇▂▁▁▁ |
| men_percent | 0 | 1 | 50.82 | 1.88 | 46.11 | 49.62 | 50.74 | 51.89 | 67.51 | ▆▇▁▁▁ |
| women_percent | 0 | 1 | 49.18 | 1.88 | 32.49 | 48.11 | 49.26 | 50.38 | 53.89 | ▁▁▁▇▆ |
| householdswithoutwateraccess_percent | 0 | 1 | 24.42 | 19.91 | 0.00 | 9.53 | 18.91 | 34.20 | 98.33 | ▇▅▂▁▁ |
| householdswithoutinternetaccess_percent | 0 | 1 | 67.05 | 13.68 | 9.98 | 59.65 | 68.38 | 76.69 | 95.43 | ▁▁▃▇▃ |
| buildingstratification1_percent | 0 | 1 | 40.44 | 22.62 | 0.34 | 22.33 | 38.29 | 57.82 | 94.18 | ▆▇▇▅▂ |
| buildingstratification2_percent | 0 | 1 | 23.30 | 17.79 | 0.00 | 6.85 | 21.64 | 36.58 | 77.67 | ▇▅▅▂▁ |
| buildingstratification3_percent | 0 | 1 | 4.19 | 7.31 | 0.00 | 0.17 | 0.82 | 4.93 | 51.92 | ▇▁▁▁▁ |
| buildingstratification4_percent | 0 | 1 | 0.57 | 2.00 | 0.00 | 0.00 | 0.05 | 0.15 | 26.06 | ▇▁▁▁▁ |
| buildingstratification5_percent | 0 | 1 | 0.17 | 0.91 | 0.00 | 0.00 | 0.00 | 0.04 | 20.62 | ▇▁▁▁▁ |
| buildingstratification6_percent | 0 | 1 | 0.07 | 0.40 | 0.00 | 0.00 | 0.00 | 0.02 | 5.53 | ▇▁▁▁▁ |
| numberofhospitalsper_km2 | 0 | 1 | 0.03 | 0.16 | 0.00 | 0.00 | 0.00 | 0.01 | 3.43 | ▇▁▁▁▁ |
| numberofhousesper_km2 | 0 | 1 | 44.76 | 211.01 | 0.01 | 5.27 | 11.73 | 24.14 | 4876.18 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(x, include = -c(municipality_code, municipality))
```

| **Characteristic**                      | **N = 1,121**¹         |
|-----------------------------------------|------------------------|
| population2007                          | 12,004 (6,373, 24,222) |
| population2008                          | 12,206 (6,505, 24,642) |
| population2009                          | 12,325 (6,583, 24,831) |
| population2010                          | 12,528 (6,632, 25,162) |
| population2011                          | 12,603 (6,689, 25,480) |
| population2012                          | 12,568 (6,586, 25,705) |
| population2013                          | 12,672 (6,496, 25,957) |
| population2014                          | 12,679 (6,520, 26,272) |
| population2015                          | 12,680 (6,433, 26,335) |
| population2016                          | 12,715 (6,428, 26,264) |
| population2017                          | 12,672 (6,429, 26,480) |
| population2018                          | 12,797 (6,583, 26,890) |
| population2019                          | 12,817 (6,637, 27,517) |
| cases2007                               | 1 (0, 9)               |
| cases2008                               | 2 (0, 10)              |
| cases2009                               | 2 (0, 12)              |
| cases2010                               | 10 (1, 54)             |
| cases2011                               | 2 (0, 12)              |
| cases2012                               | 3 (0, 23)              |
| cases2013                               | 9 (1, 51)              |
| cases2014                               | 8 (1, 51)              |
| cases2015                               | 8 (1, 44)              |
| cases2016                               | 8 (1, 37)              |
| cases2017                               | 2 (0, 10)              |
| cases2018                               | 2 (0, 14)              |
| cases2019                               | 10 (1, 75)             |
| age0_4_percent                          | 6.97 (5.88, 8.47)      |
| age5_14_percent                         | 17.0 (15.0, 19.9)      |
| age15_29_percent                        | 24.94 (22.79, 26.52)   |
| age_30_percent                          | 51 (45, 56)            |
| afrocolombian_population_percent        | 0 (0, 2)               |
| indian_population_percent               | 0 (0, 3)               |
| peoplewith_disabilities_percent         | 8.7 (5.7, 13.1)        |
| peoplewhocannotreadorwrite_percent      | 8.5 (6.3, 10.9)        |
| secondary_higher_education_percent      | 43 (38, 49)            |
| employedpopulation_percent              | 34 (29, 38)            |
| unemployedpopulation_percent            | 3.93 (2.53, 5.64)      |
| peopledoinghousework_percent            | 21.8 (18.7, 24.7)      |
| retiredpeople_percent                   | 0.64 (0.26, 1.54)      |
| men_percent                             | 50.74 (49.62, 51.89)   |
| women_percent                           | 49.26 (48.11, 50.38)   |
| householdswithoutwateraccess_percent    | 19 (10, 34)            |
| householdswithoutinternetaccess_percent | 68 (60, 77)            |
| buildingstratification1_percent         | 38 (22, 58)            |
| buildingstratification2_percent         | 22 (7, 37)             |
| buildingstratification3_percent         | 1 (0, 5)               |
| buildingstratification4_percent         | 0.05 (0.00, 0.15)      |
| buildingstratification5_percent         | 0.00 (0.00, 0.04)      |
| buildingstratification6_percent         | 0.00 (0.00, 0.02)      |
| numberofhospitalsper_km2                | 0.004 (0.001, 0.012)   |
| numberofhousesper_km2                   | 12 (5, 24)             |
| ¹ Median (Q1, Q3)                       |                        |

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(x)
```

[TABLE]

## The weekly series

``` r

weeks <- dengue_colombia[, group == "weekly dengue cases (2007-2019)"]
range(names(weeks))
#> [1] "x2007_w01" "x2019_w52"
summary(colSums(weeks, na.rm = TRUE))
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>   330.0   689.8  1127.0  1462.0  2085.0  4927.0
```
