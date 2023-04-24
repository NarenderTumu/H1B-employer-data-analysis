Data Cleaning
================
Narender
4/23/2023

Here you can find all the work done to make a new data file
“H1b\_data.RData” obtained from cleaning [H1B employer
data](https://www.uscis.gov/tools/reports-and-studies/h-1b-employer-data-hub)
for the last 5 years (2017-2021) from the
[USCIS](https://www.uscis.gov/) website and I have also used population
by zipcode data from [United States Census
Bureau](https://data.census.gov/) for the same time period and merged
the data to form the data set “H1b\_data.Rdata”

## Loading the H-1B dataset and population dataset from the last 5 years (2021-2017)

``` r
h1b_2021 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/H1b employer datafiles/2021.csv",guess_max = 60806,show_col_types = FALSE)
h1b_2020 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/H1b employer datafiles/2020.csv",guess_max = 60806,show_col_types = FALSE)
h1b_2019 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/H1b employer datafiles/2019.csv",guess_max = 60806,show_col_types = FALSE)
h1b_2018 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/H1b employer datafiles/2018.csv",guess_max = 60806,show_col_types = FALSE)
h1b_2017 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/H1b employer datafiles/2017.csv",guess_max = 60806,show_col_types = FALSE)


population_2021 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2021.B01003-Data.csv",show_col_types = FALSE)
```

    ## New names:
    ## • `` -> `...7`

``` r
population_2020 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2020.B01003-Data.csv",show_col_types = FALSE)
```

    ## New names:
    ## • `` -> `...7`

``` r
population_2019 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2019.B01003-Data.csv",show_col_types = FALSE)
```

    ## New names:
    ## • `` -> `...7`

``` r
population_2018 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2018.B01003-Data.csv",show_col_types = FALSE)
```

    ## New names:
    ## • `` -> `...7`

``` r
population_2017 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2017.B01003-Data.csv",show_col_types = FALSE)
```

    ## New names:
    ## • `` -> `...7`
