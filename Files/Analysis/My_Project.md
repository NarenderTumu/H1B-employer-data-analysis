H1b Employer Data Analysis
================
Narender Tumu

## Loading the “H1b\_data.RData” file which was obtained after cleaning the raw data files. For the process of cleaning the data navigate to [Data Cleaning](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Data%20Cleaning)

**The sample data can be seen below**

    ##     ZIP Fiscal_Year                     Employer Initial_Approvals
    ## 42 1001        2021                      OMG INC                 0
    ## 43 1001        2021                      OMG INC                 0
    ## 44 1002        2021  TRUSTEES OF AMHERST COLLEGE                 1
    ## 45 1002        2021  TRUSTEES OF AMHERST COLLEGE                 1
    ## 46 1002        2021 REGIONAL ECONOMIC MODELS INC                 3
    ##    Initial_Denials Continuing_Approvals Continuing_Denials NAICS         State
    ## 42               0                    1                  0    32 Massachusetts
    ## 43               0                    1                  0    32 Massachusetts
    ## 44               0                    1                  0    61 Massachusetts
    ## 45               0                    5                  0    61 Massachusetts
    ## 46               0                    0                  0    92 Massachusetts
    ##       City Total_population
    ## 42  AGAWAM            16088
    ## 43  AGAWAM            16088
    ## 44 AMHERST            27323
    ## 45 AMHERST            27323
    ## 46 AMHERST            27323

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
