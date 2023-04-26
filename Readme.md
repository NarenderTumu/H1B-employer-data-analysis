H1B Employer Data Analysis
================
Narender Tumu

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

#### Here are some places to navigate in the repository based on interests

-   Raw Data files can be acessed in the [H1B employer
    data](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/H1b%20employer%20datafiles)
    and [population data by
    zipcode](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Population%20datafiles)

-   The cleaned data that I used for this analysis is under [Data
    Cleaning](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Data%20Cleaning)
    folder named as “H1b\_data.Rdata”. The steps I followed to clean the
    raw data can also be found here

-   For the analysis part of the project, navigate to the
    [Analysis](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Analysis)
    folder

-   Below are the data dictionaries for the data used for this analysis
    and description of NAICS classification codes for employers

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

**The following table provides detailed information on the definitions
of NAICS codes**

<table class="table table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Sector
</th>
<th style="text-align:center;">
Description
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
11
</td>
<td style="text-align:center;">
Agriculture, Forestry, Fishing and Hunting
</td>
</tr>
<tr>
<td style="text-align:left;">
21
</td>
<td style="text-align:center;">
Mining, Quarrying, and Oil and Gas Extraction
</td>
</tr>
<tr>
<td style="text-align:left;">
22
</td>
<td style="text-align:center;">
Utilities
</td>
</tr>
<tr>
<td style="text-align:left;">
23
</td>
<td style="text-align:center;">
Construction
</td>
</tr>
<tr>
<td style="text-align:left;">
31-33
</td>
<td style="text-align:center;">
Manufacturing
</td>
</tr>
<tr>
<td style="text-align:left;">
42
</td>
<td style="text-align:center;">
Wholesale Trade
</td>
</tr>
<tr>
<td style="text-align:left;">
44-45
</td>
<td style="text-align:center;">
Retail Trade
</td>
</tr>
<tr>
<td style="text-align:left;">
48-49
</td>
<td style="text-align:center;">
Transportation and Warehousing
</td>
</tr>
<tr>
<td style="text-align:left;">
51
</td>
<td style="text-align:center;">
Information
</td>
</tr>
<tr>
<td style="text-align:left;">
52
</td>
<td style="text-align:center;">
Finance and Insurance
</td>
</tr>
<tr>
<td style="text-align:left;">
53
</td>
<td style="text-align:center;">
Real Estate and Rental and Leasing
</td>
</tr>
<tr>
<td style="text-align:left;">
54
</td>
<td style="text-align:center;">
Professional, Scientific, and Technical Services
</td>
</tr>
<tr>
<td style="text-align:left;">
55
</td>
<td style="text-align:center;">
Management of Companies and Enterprises
</td>
</tr>
<tr>
<td style="text-align:left;">
56
</td>
<td style="text-align:center;">
Administrative and Support and Waste Management and Remediation Services
</td>
</tr>
<tr>
<td style="text-align:left;">
61
</td>
<td style="text-align:center;">
Educational Services
</td>
</tr>
<tr>
<td style="text-align:left;">
62
</td>
<td style="text-align:center;">
Health Care and Social Assistance
</td>
</tr>
<tr>
<td style="text-align:left;">
71
</td>
<td style="text-align:center;">
Arts, Entertainment, and Recreation
</td>
</tr>
<tr>
<td style="text-align:left;">
72
</td>
<td style="text-align:center;">
Accommodation and Food Services
</td>
</tr>
<tr>
<td style="text-align:left;">
81
</td>
<td style="text-align:center;">
Other Services (except Public Administration)
</td>
</tr>
<tr>
<td style="text-align:left;">
92
</td>
<td style="text-align:center;">
Public Administration
</td>
</tr>
<tr>
<td style="text-align:left;">
99
</td>
<td style="text-align:center;">
Unknown
</td>
</tr>
</tbody>
</table>
