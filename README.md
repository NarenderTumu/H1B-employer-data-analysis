# H1B-employer-data-analysis

* Hello, my name is **Narender** and I am trying to analyze H-1B employer data which is from the [Immigration and citizenship data from USCIS](https://www.uscis.gov/tools/reports-and-studies/h-1b-employer-data-hub) and also joined the population data for that specific zipcode and that fiscal year which is obtained from [United States Census Beaureau](https://data.census.gov/table?t=Counts,+Estimates,+and+Projections&g=010XX00US$8600000&tid=ACSDT5Y2021.B01003)

* Before going into the analysis, I wanted to provide some basic information on what is a H1B visa for those who are not familiar with it.

**The H1B visa is a specialized work visa under the Immigration and Nationality Act that enables American companies to hire foreign professionals in specialty occupations. To sponsor foreign workers for this visa, employers must file petitions with the United States Citizenship and Immigration Services (USCIS). If you want to learn more about this you can visit [USCIS](https://www.uscis.gov/working-in-the-united-states/h-1b-specialty-occupations) or [U.S.Department of Labor](https://www.dol.gov/agencies/whd/immigration/h1b) websites**

* Raw Data can be acessed in the folder named [Files](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files) under [H1B employer datafiles](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/H1b%20employer%20datafiles) for data related to H1B employer from 2017 to 2021 and population data from 2017 to 2021 based on zipcode can be accessed under [population datafiles](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Population%20datafiles) folder . Processed and cleaned data can be accessed in the [Data Cleaning](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Data%20Cleaning) folder named as "H1b_data.Rdata", the process and steps I followed to clean the data is available in the same folder


**Data Dictionary for the H1B employer data**

```{r creating a Data Dictionary,echo=FALSE}
# Define the data dictionary as a data frame
dict <- data.frame(
  Variable = names(H1b_data),
  Description = c("Petitioner’s five-digit ZIP code ",
                  "This variable indicates the fiscal year in which the H-1B petition was filed. Fiscal year in the United States starts from October 1st and ends on September 30th of the following year.", 
                  "Petitioner’s firm/employer name", 
                  "Number of approvals when the employer filing petition for the first time to the worker",
                  "Number of denails when the employer filing petition for the first time to the worker",
                  "Number of approvals when the employer is filing the petition for the worker who was already having an approved visa for the same employer and wishing to extend the workers time period",
                  "Number of denials when the employer is filing the petition for the worker who was already having an approved visa for the same employer and wishing to extend the workers time period",
                  "North American Industry Classification System Code: A character string that stands for an industry classification within the North American Industry Classification System,For more information on the NAICS, visit the [U.S. Census Bureau’s North American Industry Classification Code webpage](https://www.census.gov/naics/)",
                  "Petitioner’s state",
                  "Petitioner’s City",
                  "Population of the place by Zipcode"), 
Datatype = sapply(H1b_data, class),stringsAsFactors = FALSE)


kable(dict,align = "lccc", row.names = FALSE ) %>%
  kable_styling("bordered", full_width = FALSE)

```
