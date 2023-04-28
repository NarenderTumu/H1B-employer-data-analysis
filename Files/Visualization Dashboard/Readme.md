Data Preperation for visualization
================
Narender

### I am trying to generate an interactive US map visualization using R. The visualization will allow users to hover over and select a specific state or city of interest to obtain the numerical count of approvals and denials for employers operating in that area.

-   To start with, I have loaded the
    [data](https://github.com/NarenderTumu/H1B-employer-data-analysis/blob/main/Files/Data%20Cleaning/H1b_data.RData)
    I am using for this project and also a new data set that was
    obtained from [simplemaps](https://simplemaps.com/data/us-cities)
    website which I am going to use to get the latitudes and longitudes
    data that will be helpful to build a map visualization.

-   I have also grouped and summarized the H1b\_data, that is I have
    grouped the data by Employer and State variables and then summarized
    their approvals and denials variables by using sum()function. A
    sample of that data can be seen below

<table class="table table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
Employer
</th>
<th style="text-align:left;">
State
</th>
<th style="text-align:left;">
City
</th>
<th style="text-align:right;">
total\_initial\_approvals
</th>
<th style="text-align:right;">
total\_initial\_denials
</th>
<th style="text-align:right;">
total\_Continuing\_approvals
</th>
<th style="text-align:right;">
total\_continuing\_denials
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
+VANTAGE CORP
</td>
<td style="text-align:left;">
Michigan
</td>
<td style="text-align:left;">
LIVONIA
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
012 GLOBAL INC
</td>
<td style="text-align:left;">
Florida
</td>
<td style="text-align:left;">
MARGATE
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
01INTERACTIVE INC
</td>
<td style="text-align:left;">
California
</td>
<td style="text-align:left;">
CITY INDUSTRY
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
01INTERACTIVE INC
</td>
<td style="text-align:left;">
California
</td>
<td style="text-align:left;">
CITY OF INDUSTRY
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
01INTERACTIVE INC
</td>
<td style="text-align:left;">
California
</td>
<td style="text-align:left;">
HACIENDA HEIGHTS
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
</table>

-   Below is the sample of data that I obtained from
    [simplemaps](https://simplemaps.com/data/us-cities) and also cleaned
    it based on the requirements for the visualization

<table class="table table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
City
</th>
<th style="text-align:left;">
State
</th>
<th style="text-align:right;">
lat
</th>
<th style="text-align:right;">
lng
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
NEW YORK
</td>
<td style="text-align:left;">
New York
</td>
<td style="text-align:right;">
40.6943
</td>
<td style="text-align:right;">
-73.9249
</td>
</tr>
<tr>
<td style="text-align:left;">
LOS ANGELES
</td>
<td style="text-align:left;">
California
</td>
<td style="text-align:right;">
34.1141
</td>
<td style="text-align:right;">
-118.4068
</td>
</tr>
<tr>
<td style="text-align:left;">
CHICAGO
</td>
<td style="text-align:left;">
Illinois
</td>
<td style="text-align:right;">
41.8375
</td>
<td style="text-align:right;">
-87.6866
</td>
</tr>
<tr>
<td style="text-align:left;">
MIAMI
</td>
<td style="text-align:left;">
Florida
</td>
<td style="text-align:right;">
25.7840
</td>
<td style="text-align:right;">
-80.2101
</td>
</tr>
<tr>
<td style="text-align:left;">
DALLAS
</td>
<td style="text-align:left;">
Texas
</td>
<td style="text-align:right;">
32.7935
</td>
<td style="text-align:right;">
-96.7667
</td>
</tr>
</tbody>
</table>

-   Here is the merged and final data that I am going to use to create a
    US map visualization. To access this data navigate to this
    [location](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Visualization%20Dashboard)

<table class="table table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
State
</th>
<th style="text-align:left;">
City
</th>
<th style="text-align:left;">
Employer
</th>
<th style="text-align:right;">
total\_initial\_approvals
</th>
<th style="text-align:right;">
total\_initial\_denials
</th>
<th style="text-align:right;">
total\_Continuing\_approvals
</th>
<th style="text-align:right;">
total\_continuing\_denials
</th>
<th style="text-align:right;">
lat
</th>
<th style="text-align:right;">
lng
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
ALABASTER
</td>
<td style="text-align:left;">
SHELBY OBGYN PC
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
33.2198
</td>
<td style="text-align:right;">
-86.8225
</td>
</tr>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
ALABASTER
</td>
<td style="text-align:left;">
AVANTI POLAR LIPIDS LLC
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
33.2198
</td>
<td style="text-align:right;">
-86.8225
</td>
</tr>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
ALABASTER
</td>
<td style="text-align:left;">
HEART SOUTH CARDIOVASCULAR GR PC
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
33.2198
</td>
<td style="text-align:right;">
-86.8225
</td>
</tr>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
ALBERTVILLE
</td>
<td style="text-align:left;">
PROGRESS RAIL SVCS CORP
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
34.2633
</td>
<td style="text-align:right;">
-86.2108
</td>
</tr>
<tr>
<td style="text-align:left;">
Alabama
</td>
<td style="text-align:left;">
ALBERTVILLE
</td>
<td style="text-align:left;">
TEAM TSI CORPORATION
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
34.2633
</td>
<td style="text-align:right;">
-86.2108
</td>
</tr>
</tbody>
</table>



**work Still in progress, stay tuned for the updates**
