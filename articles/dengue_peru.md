# Dengue dataset of Peru

``` r

library(denguedatasets)
```

The objective of this document is to show and provide elements of the
exploratory data analysis so that users can have a quick view of the
structure, data types, column names, and number of rows.

## EDA with function glimpse of dplyr package

``` r

dplyr::glimpse(dengue_peru)
#> Rows: 171,282
#> Columns: 8
#> $ departamento <chr> "LORETO", "LORETO", "LORETO", "LORETO", "LORETO", "LORETO…
#> $ provincia    <chr> "ALTO AMAZONAS", "ALTO AMAZONAS", "ALTO AMAZONAS", "ALTO …
#> $ distrito     <chr> "YURIMAGUAS", "YURIMAGUAS", "YURIMAGUAS", "YURIMAGUAS", "…
#> $ enfermedad   <chr> "DENGUE SIN SENALES DE ALARMA", "DENGUE SIN SENALES DE AL…
#> $ ano          <dbl> 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 201…
#> $ semana       <dbl> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ edad         <dbl> 55, 15, 22, 53, 15, 17, 52, 32, 16, 30, 48, 35, 19, 28, 1…
#> $ sexo         <chr> "F", "F", "F", "M", "M", "M", "M", "F", "M", "F", "M", "F…
```

## EDA with skim

``` r

skimr::skim(dengue_peru)
```

|                                                  |             |
|:-------------------------------------------------|:------------|
| Name                                             | dengue_peru |
| Number of rows                                   | 171282      |
| Number of columns                                | 8           |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_   |             |
| Column type frequency:                           |             |
| character                                        | 5           |
| numeric                                          | 3           |
| \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_ |             |
| Group variables                                  | None        |

Data summary {.table}

**Variable type: character**

| skim_variable | n_missing | complete_rate | min | max | empty | n_unique | whitespace |
|:--------------|----------:|--------------:|----:|----:|------:|---------:|-----------:|
| departamento  |         0 |             1 |   2 |  13 |     0 |       22 |          0 |
| provincia     |         0 |             1 |   2 |  23 |     0 |      105 |          0 |
| distrito      |         0 |             1 |   2 |  28 |     0 |      500 |          0 |
| enfermedad    |         0 |             1 |  12 |  28 |     0 |        3 |          0 |
| sexo          |         0 |             1 |   1 |   1 |     0 |        2 |          0 |

**Variable type: numeric**

| skim_variable | n_missing | complete_rate | mean | sd | p0 | p25 | p50 | p75 | p100 | hist |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|
| ano | 0 | 1 | 2020.91 | 1.00 | 2019 | 2020 | 2021 | 2022 | 2022 | ▂▆▁▆▇ |
| semana | 0 | 1 | 25.56 | 16.17 | 1 | 12 | 21 | 43 | 53 | ▇▇▃▃▇ |
| edad | 0 | 1 | 28.97 | 86.68 | 1 | 14 | 26 | 40 | 35109 | ▇▁▁▁▁ |

## EDA with function tbl_summary of gtsummary package

``` r

gtsummary::tbl_summary(dengue_peru)
```

[TABLE]

## EDA with function gt_plt_summary of gtExtras package

``` r

gtExtras::gt_plt_summary(dengue_peru)
#> Warning: Data has more than 100,000 rows, consider sampling the data to reduce
#> size.
```

[TABLE]
