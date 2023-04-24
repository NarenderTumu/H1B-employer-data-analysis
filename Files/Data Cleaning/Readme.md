Data Cleaning
================
Narender

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


population_2021 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2021.B01003-Data.csv",show_col_types = FALSE,col_names = c("Geography","Geographic area name","Estimate total","margin of error","Annotation of margin of error","Annotation of estimate","NA"))
population_2020 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2020.B01003-Data.csv",show_col_types = FALSE,col_names = c("Geography","Geographic area name","Estimate total","margin of error","Annotation of margin of error","Annotation of estimate","NA"))
population_2019 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2019.B01003-Data.csv",show_col_types = FALSE,col_names = c("Geography","Geographic area name","Estimate total","margin of error","Annotation of margin of error","Annotation of estimate","NA"))
population_2018 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2018.B01003-Data.csv",show_col_types = FALSE,col_names = c("Geography","Geographic area name","Estimate total","margin of error","Annotation of margin of error","Annotation of estimate","NA"))
population_2017 <- read_csv("~/STA631/H1B-employer-data-analysis/Files/Population datafiles/ACSDT5Y2017.B01003-Data.csv",show_col_types = FALSE,col_names = c("Geography","Geographic area name","Estimate total","margin of error","Annotation of margin of error","Annotation of estimate","NA"))
```

``` r
# Removing first row which is the headers of the data and also only keeping the zip code,total_population columns which we are going to use for this analysis

population_2021<-population_2021[-1,c(2,3)]
population_2020<-population_2020[-1,c(2,3)]
population_2019<-population_2019[-1,c(2,3)]
population_2018<-population_2018[-1,c(2,3)]
population_2017<-population_2017[-1,c(2,3)]


# Giving new column names which we can use to join with the other data sets

colnames(population_2021)<-c("ZIP","Total_Population")
colnames(population_2020)<-c("ZIP","Total_Population")
colnames(population_2019)<-c("ZIP","Total_Population")
colnames(population_2018)<-c("ZIP","Total_Population")
colnames(population_2017)<-c("ZIP","Total_Population")


# Removing the "ZCTA5" string which is at the start of every zipcode value in ZIP Variable as it means " Zipcode Tabluation Area"

population_2021$ZIP <- gsub("ZCTA5", "", population_2021$ZIP)
population_2020$ZIP <- gsub("ZCTA5", "", population_2020$ZIP)
population_2019$ZIP <- gsub("ZCTA5", "", population_2019$ZIP)
population_2018$ZIP <- gsub("ZCTA5", "", population_2018$ZIP)
population_2017$ZIP <- gsub("ZCTA5", "", population_2017$ZIP)
```

``` r
# Using str() function to check the data types of the variables in two data frames

str(h1b_2021)
```

    ## spc_tbl_ [60,806 × 11] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
    ##  $ Fiscal Year        : num [1:60806] 2021 2021 2021 2021 2021 ...
    ##  $ Employer           : chr [1:60806] NA "+VANTAGE CORP" "01INTERACTIVE INC" "02908 HOLDCO LLC" ...
    ##  $ Initial Approval   : num [1:60806] 0 0 2 1 1 2 0 0 0 0 ...
    ##  $ Initial Denial     : num [1:60806] 0 0 0 0 0 1 0 0 0 0 ...
    ##  $ Continuing Approval: num [1:60806] 1 1 0 0 0 0 1 1 9 1 ...
    ##  $ Continuing Denial  : num [1:60806] 0 0 0 0 0 0 0 0 0 0 ...
    ##  $ NAICS              : num [1:60806] 52 33 54 53 54 54 42 45 45 72 ...
    ##  $ Tax ID             : chr [1:60806] "1841" "3011" "9852" "4909" ...
    ##  $ State              : chr [1:60806] "FL" "MI" "CA" "RI" ...
    ##  $ City               : chr [1:60806] "TAMPA" "LIVONIA" "CITY INDUSTRY" "PROVIDENCE" ...
    ##  $ ZIP                : chr [1:60806] "33618" "48150" "91745" "02908" ...
    ##  - attr(*, "spec")=
    ##   .. cols(
    ##   ..   `Fiscal Year` = col_double(),
    ##   ..   Employer = col_character(),
    ##   ..   `Initial Approval` = col_double(),
    ##   ..   `Initial Denial` = col_double(),
    ##   ..   `Continuing Approval` = col_double(),
    ##   ..   `Continuing Denial` = col_double(),
    ##   ..   NAICS = col_double(),
    ##   ..   `Tax ID` = col_character(),
    ##   ..   State = col_character(),
    ##   ..   City = col_character(),
    ##   ..   ZIP = col_character()
    ##   .. )
    ##  - attr(*, "problems")=<externalptr>

``` r
str(population_2021)
```

    ## tibble [33,775 × 2] (S3: tbl_df/tbl/data.frame)
    ##  $ ZIP             : chr [1:33775] "Geographic Area Name" " 00601" " 00602" " 00603" ...
    ##  $ Total_Population: chr [1:33775] "Estimate!!Total" "17126" "37895" "49136" ...

``` r
# changing the data type to integer using as.integer() function as these variables are of type character

h1b_2021$ZIP<-as.integer(h1b_2021$ZIP)
h1b_2020$ZIP<-as.integer(h1b_2020$ZIP)
h1b_2019$ZIP<-as.integer(h1b_2019$ZIP)
h1b_2018$ZIP<-as.integer(h1b_2018$ZIP)
h1b_2017$ZIP<-as.integer(h1b_2017$ZIP)


population_2021$ZIP<-as.integer(population_2021$ZIP)
population_2020$ZIP<-as.integer(population_2020$ZIP)
population_2019$ZIP<-as.integer(population_2019$ZIP)
population_2018$ZIP<-as.integer(population_2018$ZIP)
population_2017$ZIP<-as.integer(population_2017$ZIP)


population_2021$Total_Population<-as.integer(population_2021$Total_Population)
population_2020$Total_Population<-as.integer(population_2020$Total_Population)
population_2019$Total_Population<-as.integer(population_2019$Total_Population)
population_2018$Total_Population<-as.integer(population_2018$Total_Population)
population_2017$Total_Population<-as.integer(population_2017$Total_Population)
```

``` r
# Joining the two data sets to one data frame for each year using merge() function

Data_2021<-merge(h1b_2021,population_2021,by="ZIP")
Data_2020<-merge(h1b_2020,population_2020,by="ZIP")
Data_2019<-merge(h1b_2019,population_2019,by="ZIP")
Data_2018<-merge(h1b_2018,population_2018,by="ZIP")
Data_2017<-merge(h1b_2017,population_2017,by="ZIP")
```

``` r
# Changing the names of the variables in all the data sets to one set of variable names to maintain the consistency and also to merge the Datasets

New_names<-c("ZIP","Fiscal_Year","Employer","Initial_Approvals","Initial_Denials","Continuing_Approvals","Continuing_Denials","NAICS","Tax_id","State","City","Total_population")

names(Data_2017)<-New_names
names(Data_2018)<-New_names
names(Data_2019)<-New_names
names(Data_2020)<-New_names
names(Data_2021)<-New_names
```

``` r
# Merging the data sets for every year into one data frame using rbind() function

H1b_data<-rbind(Data_2021,Data_2020,Data_2019,Data_2018,Data_2017)

# Converting the ZIP variable into character variable and using skim() function to explore the data and find any missing values

H1b_data$ZIP<-as.character(H1b_data$ZIP)
```

``` r
# Removing  observations where the value of Employer variable is missing using complete.cases() function

H1b_data<-H1b_data[complete.cases(H1b_data$Employer),]
```

``` r
# Deleting the observations with state as DC or PR (Washington, D.C, Puerto Rico) as they are not states in the US map

Not_state<-c("PR","DC","FM")

H1b_data <- H1b_data[!(H1b_data$State %in% Not_state),]
```

``` r
# Changing the state names from abbreviated from to full names

State_names <- c(AL = "Alabama", AK = "Alaska", AZ = "Arizona", AR = "Arkansas", CA = "California", CO = "Colorado", CT = "Connecticut", DE = "Delaware", FL = "Florida", GA = "Georgia", HI = "Hawaii", ID = "Idaho", IL = "Illinois", IN = "Indiana", IA = "Iowa", KS = "Kansas", KY = "Kentucky", LA = "Louisiana", ME = "Maine", MD = "Maryland", MA = "Massachusetts", MI = "Michigan", MN = "Minnesota", MS = "Mississippi", MO = "Missouri", MT = "Montana", NE = "Nebraska", NV = "Nevada", NH = "New Hampshire", NJ = "New Jersey", NM = "New Mexico", NY = "New York", NC = "North Carolina", ND = "North Dakota", OH = "Ohio", OK = "Oklahoma", OR = "Oregon", PA = "Pennsylvania", RI = "Rhode Island", SC = "South Carolina", SD = "South Dakota", TN = "Tennessee", TX = "Texas", UT = "Utah", VT = "Vermont", VA = "Virginia", WA = "Washington", WV = "West Virginia", WI = "Wisconsin", WY = "Wyoming")

# using recode function to change the names from abbreviated form to their full names

H1b_data$State <- recode(H1b_data$State, !!!State_names)
```
