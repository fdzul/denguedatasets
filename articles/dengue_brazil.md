# Brazil Dengue Dataset

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_brazil)
#> Rows: 133,920
#> Columns: 26
#> $ micro_code      <dbl> 11001, 11002, 11003, 11004, 11005, 11006, 11007, 11008…
#> $ micro_name      <chr> "Porto Velho", "Guajar<e1>-Mirim", "Ariquemes", "Ji-Pa…
#> $ micro_name_ibge <chr> "PORTO VELHO", "GUAJARÁ-MIRIM", "ARIQUEMES", "JI-PARAN…
#> $ meso_code       <dbl> 1101, 1101, 1102, 1102, 1102, 1102, 1102, 1102, 1201, …
#> $ meso_name       <chr> "Madeira-Guaporé", "Madeira-Guaporé", "Leste Rondonien…
#> $ state_code      <dbl> 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 13…
#> $ state_name      <chr> "Rondônia", "Rondônia", "Rondônia", "Rondônia", "Rondô…
#> $ region_code     <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ region_name     <chr> "North", "North", "North", "North", "North", "North", …
#> $ biome_code      <dbl> 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, …
#> $ biome_name      <chr> "Amazon", "Amazon", "Amazon", "Amazon", "Amazon", "Ama…
#> $ ecozone_code    <dbl> 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, …
#> $ ecozone_name    <chr> "Amazon", "Amazon", "Amazon", "Amazon", "Amazon", "Ama…
#> $ main_climate    <chr> "AM", "AM", "AM", "AM", "AM", "AM", "AM", "AM", "AF", …
#> $ month           <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ year            <dbl> 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, …
#> $ time            <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ dengue_cases    <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
#> $ population      <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
#> $ pop_density     <dbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
#> $ tmax            <dbl> 30.54456, 31.00588, 30.44436, 30.45871, 30.61679, 31.0…
#> $ tmin            <dbl> 21.75120, 21.64131, 21.49207, 21.11183, 21.05342, 21.2…
#> $ pdsi            <dbl> -1.79060245, 0.62940842, -3.45542192, -1.58628595, -0.…
#> $ urban           <dbl> 85.20, 72.31, 66.91, 68.68, 42.82, 66.43, 82.83, 65.39…
#> $ water_network   <dbl> 33.57, 27.43, 27.76, 32.23, 21.40, 45.39, 79.22, 38.42…
#> $ water_shortage  <dbl> 0.2245, 0.0873, 0.1871, 0.2381, 0.2837, 0.3104, 0.1601…
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

gtsummary::tbl_summary(dengue_brazil)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_brazil)
#> Warning: Data has more than 100,000 rows, consider sampling the data to reduce
#> size.
```

[TABLE]
