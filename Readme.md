H1B-employer-data-analysis
================
Narender
4/24/2023

-   Hello, my name is **Narender** and I am trying to analyze H-1B
    employer data which is from the [Immigration and citizenship data
    from
    USCIS](https://www.uscis.gov/tools/reports-and-studies/h-1b-employer-data-hub)
    and also joined the population data for that specific zipcode and
    that fiscal year which is obtained from [United States Census
    Beaureau](https://data.census.gov/table?t=Counts,+Estimates,+and+Projections&g=010XX00US$8600000&tid=ACSDT5Y2021.B01003)

-   Before going into the analysis, I wanted to provide some basic
    information on what is a H1B visa for those who are not familiar
    with it.

**The H1B visa is a specialized work visa under the Immigration and
Nationality Act that enables American companies to hire foreign
professionals in specialty occupations. To sponsor foreign workers for
this visa, employers must file petitions with the United States
Citizenship and Immigration Services (USCIS). If you want to learn more
about this you can visit
[USCIS](https://www.uscis.gov/working-in-the-united-states/h-1b-specialty-occupations)
or [U.S.Department of
Labor](https://www.dol.gov/agencies/whd/immigration/h1b) websites**

-   Raw Data can be acessed in the folder named
    [Files](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files)
    under [H1B employer
    datafiles](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/H1b%20employer%20datafiles)
    for data related to H1B employer from 2017 to 2021 and population
    data from 2017 to 2021 based on zipcode can be accessed under
    [population
    datafiles](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Population%20datafiles)
    folder . Processed and cleaned data can be accessed in the [Data
    Cleaning](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Data%20Cleaning)
    folder named as “H1b\_data.Rdata”, the process and steps I followed
    to clean the data is available in the same folder

**Data Dictionary for the H1B employer data**

<table class="table table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:center;">
Description
</th>
<th style="text-align:center;">
Datatype
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
ZIP
</td>
<td style="text-align:center;">
Petitioner’s five-digit ZIP code
</td>
<td style="text-align:center;">
character
</td>
</tr>
<tr>
<td style="text-align:left;">
Fiscal\_Year
</td>
<td style="text-align:center;">
This variable indicates the fiscal year in which the H-1B petition was
filed. Fiscal year in the United States starts from October 1st and ends
on September 30th of the following year.
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
Employer
</td>
<td style="text-align:center;">
Petitioner’s firm/employer name
</td>
<td style="text-align:center;">
character
</td>
</tr>
<tr>
<td style="text-align:left;">
Initial\_Approvals
</td>
<td style="text-align:center;">
Number of approvals when the employer filing petition for the first time
to the worker
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
Initial\_Denials
</td>
<td style="text-align:center;">
Number of denails when the employer filing petition for the first time
to the worker
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
Continuing\_Approvals
</td>
<td style="text-align:center;">
Number of approvals when the employer is filing the petition for the
worker who was already having an approved visa for the same employer and
wishing to extend the workers time period
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
Continuing\_Denials
</td>
<td style="text-align:center;">
Number of denials when the employer is filing the petition for the
worker who was already having an approved visa for the same employer and
wishing to extend the workers time period
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
NAICS
</td>
<td style="text-align:center;">
North American Industry Classification System Code: A character string
that stands for an industry classification within the North American
Industry Classification System,For more information on the NAICS, visit
the [U.S. Census Bureau’s North American Industry Classification Code
webpage](https://www.census.gov/naics/)
</td>
<td style="text-align:center;">
numeric
</td>
</tr>
<tr>
<td style="text-align:left;">
State
</td>
<td style="text-align:center;">
Petitioner’s state
</td>
<td style="text-align:center;">
character
</td>
</tr>
<tr>
<td style="text-align:left;">
City
</td>
<td style="text-align:center;">
Petitioner’s City
</td>
<td style="text-align:center;">
character
</td>
</tr>
<tr>
<td style="text-align:left;">
Total\_population
</td>
<td style="text-align:center;">
Population of the place by Zipcode
</td>
<td style="text-align:center;">
integer
</td>
</tr>
</tbody>
</table>
