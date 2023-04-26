H1b Employer Data Analysis
================
Narender Tumu

## Loading the “H1b\_data.RData” file which was obtained after cleaning the raw data files. For the process of cleaning the data navigate to [Data Cleaning](https://github.com/NarenderTumu/H1B-employer-data-analysis/tree/main/Files/Data%20Cleaning)

#### Below are the Data dictionaries to understand the data better

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
<th style="text-align:left;">
Definition
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
11
</td>
<td style="text-align:left;">
Agriculture, Forestry, Fishing and Hunting
</td>
</tr>
<tr>
<td style="text-align:left;">
21
</td>
<td style="text-align:left;">
Mining, Quarrying, and Oil and Gas Extraction
</td>
</tr>
<tr>
<td style="text-align:left;">
22
</td>
<td style="text-align:left;">
Utilities
</td>
</tr>
<tr>
<td style="text-align:left;">
23
</td>
<td style="text-align:left;">
Construction
</td>
</tr>
<tr>
<td style="text-align:left;">
31-33
</td>
<td style="text-align:left;">
Manufacturing
</td>
</tr>
<tr>
<td style="text-align:left;">
42
</td>
<td style="text-align:left;">
Wholesale Trade
</td>
</tr>
<tr>
<td style="text-align:left;">
44-45
</td>
<td style="text-align:left;">
Retail Trade
</td>
</tr>
<tr>
<td style="text-align:left;">
48-49
</td>
<td style="text-align:left;">
Transportation and Warehousing
</td>
</tr>
<tr>
<td style="text-align:left;">
51
</td>
<td style="text-align:left;">
Information
</td>
</tr>
<tr>
<td style="text-align:left;">
52
</td>
<td style="text-align:left;">
Finance and Insurance
</td>
</tr>
<tr>
<td style="text-align:left;">
53
</td>
<td style="text-align:left;">
Real Estate and Rental and Leasing
</td>
</tr>
<tr>
<td style="text-align:left;">
54
</td>
<td style="text-align:left;">
Professional, Scientific, and Technical Services
</td>
</tr>
<tr>
<td style="text-align:left;">
55
</td>
<td style="text-align:left;">
Management of Companies and Enterprises
</td>
</tr>
<tr>
<td style="text-align:left;">
56
</td>
<td style="text-align:left;">
Administrative and Support and Waste Management and Remediation Services
</td>
</tr>
<tr>
<td style="text-align:left;">
61
</td>
<td style="text-align:left;">
Educational Services
</td>
</tr>
<tr>
<td style="text-align:left;">
62
</td>
<td style="text-align:left;">
Health Care and Social Assistance
</td>
</tr>
<tr>
<td style="text-align:left;">
71
</td>
<td style="text-align:left;">
Arts, Entertainment, and Recreation
</td>
</tr>
<tr>
<td style="text-align:left;">
72
</td>
<td style="text-align:left;">
Accommodation and Food Services
</td>
</tr>
<tr>
<td style="text-align:left;">
81
</td>
<td style="text-align:left;">
Other Services (except Public Administration)
</td>
</tr>
<tr>
<td style="text-align:left;">
92
</td>
<td style="text-align:left;">
Public Administration
</td>
</tr>
<tr>
<td style="text-align:left;">
99
</td>
<td style="text-align:left;">
Unknown
</td>
</tr>
</tbody>
</table>

we have variables that are numeric, character and integer. Let’s convert
some of the variables to use them for analysis

``` r
# converting the Fiscal_Year, NAICS variables from numeric to factor

H1b_data$Fiscal_Year<-as.factor(H1b_data$Fiscal_Year)

H1b_data$NAICS<-as.factor(H1b_data$NAICS)


# converting the State, City variables from Character to factor

H1b_data$State<-as.factor(H1b_data$State)

H1b_data$City<-as.factor(H1b_data$City)
```

Checking the Summary statistics of all the numeric variables in the data
set using select() and summary() functions

    ##  Initial_Approvals  Initial_Denials     Continuing_Approvals Continuing_Denials
    ##  Min.   :   0.000   Min.   :   0.0000   Min.   :    0.000    Min.   :   0.000  
    ##  1st Qu.:   0.000   1st Qu.:   0.0000   1st Qu.:    0.000    1st Qu.:   0.000  
    ##  Median :   0.000   Median :   0.0000   Median :    1.000    Median :   0.000  
    ##  Mean   :   2.035   Mean   :   0.3708   Mean   :    5.041    Mean   :   0.406  
    ##  3rd Qu.:   1.000   3rd Qu.:   0.0000   3rd Qu.:    2.000    3rd Qu.:   0.000  
    ##  Max.   :4807.000   Max.   :2060.0000   Max.   :26145.000    Max.   :3910.000  
    ##                                                                                
    ##  Total_population
    ##  Min.   :     0  
    ##  1st Qu.: 16845  
    ##  Median : 28234  
    ##  Mean   : 30459  
    ##  3rd Qu.: 41411  
    ##  Max.   :130352  
    ##  NA's   :28

-   Using the table() function for all the factor variables to get the
    frequency distribution of each level

-   We can see that from the below plot, most of the employers belongs
    to Professional, Scientific, and Technical Services category

![](Readme_files/figure-gfm/NAICS%20column%20chart-1.png)<!-- -->

-   We can see from the below chart, that California has the highest
    number of employees filing for H1B visa followed by New York, Texas,
    New Jersey

![](Readme_files/figure-gfm/States%20Column%20Chart-1.png)<!-- -->

-   We can see from the below tree map of top 30 cities in US based on
    the number of employers filing H1B petitions from 2017-2021, where
    New York, San Francisco, Houston, Chicago, Boston stands in the top

![](Readme_files/figure-gfm/City%20Tree%20map-1.png)<!-- -->

#### Checking the distribution of variables and correlations between the numerical variables

-   Here are the histograms for all the numeric variables. We can
    observe that the variables Initial\_Approvals, Initial\_Denials,
    Continuing\_Approvals, and Continuing\_Denials are heavily right
    skewed, while the Total\_population variable is only slightly right
    skewed.

![](Readme_files/figure-gfm/histograms%20of%20numeric%20variables-1.png)<!-- -->![](Readme_files/figure-gfm/histograms%20of%20numeric%20variables-2.png)<!-- -->![](Readme_files/figure-gfm/histograms%20of%20numeric%20variables-3.png)<!-- -->![](Readme_files/figure-gfm/histograms%20of%20numeric%20variables-4.png)<!-- -->![](Readme_files/figure-gfm/histograms%20of%20numeric%20variables-5.png)<!-- -->

-   Below we can see the output of ggpairs() which gives histograms and
    scatter plots of all the numeric variables with their respective
    correlation-coefficients from which we can see there is some
    correlation between Initial\_Approvals and Continuing Approvals.

![](Readme_files/figure-gfm/GGpairs%20of%20all%20numeric%20variables-1.png)<!-- -->

-   This Scatter plot below explains the relationship between Initial
    and Continuing Approvals

![](Readme_files/figure-gfm/scatter%20plot%20b/w%20initial%20and%20continuing%20approvals-1.png)<!-- -->

### To initiate the analysis, I plan to test the models on a smaller dataset due to the large size of our main dataset. I will filter the data based on fiscal year “2021” to focus on the H1B employer data for that year. Then, I will divide the 2021 data into two subsets: a training set(70% of the data) and a testing set(30% of the data), for further analysis.

``` r
H1b_data2021<-H1b_data%>%filter(Fiscal_Year==2021)

set.seed(1234)

trainIndex <- createDataPartition(H1b_data2021$Initial_Approvals, p = 0.7, list = FALSE, times = 1)
train <- H1b_data2021[trainIndex,]
test <- H1b_data2021[-trainIndex,]
```

-   I have created two new variables by adding a constant and taking log
    of that since the response and predictor variable are heavily right
    skewed and have a lot of zeros in the data.

``` r
train$logIN_Approvals<-log(train$Initial_Approvals+2)
train$logCON_Approvals<-log(train$Continuing_Approvals+2)
```

### Model 1- Simple linear Regression

-   The following linear model is created to forecast initial approvals
    based on continuing approvals. Both variables are transformed
    because they are skewed and non-normal. The deviance residuals in
    the summary look decent, except for the unusually high minimum and
    maximum deviance in residuals. The coefficients and p-values for the
    intercept and predictor variable are acceptable and significant in
    predicting the response variable. The R-squared and adjusted
    R-squared values are low, indicating that the model only accounts
    for 32% of the variance. The model failed to meet the assumptions
    reasonably well, it does not perform well in predicting the response
    variable.

<!-- -->

    ## 
    ## Call:
    ## lm(formula = logIN_Approvals ~ logCON_Approvals, data = train)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -2.3058 -0.3003 -0.1356  0.2698  5.0118 
    ## 
    ## Coefficients:
    ##                  Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)      0.547357   0.004608   118.8   <2e-16 ***
    ## logCON_Approvals 0.406031   0.003157   128.6   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.4619 on 41356 degrees of freedom
    ## Multiple R-squared:  0.2858, Adjusted R-squared:  0.2857 
    ## F-statistic: 1.655e+04 on 1 and 41356 DF,  p-value: < 2.2e-16

![](Readme_files/figure-gfm/simple%20linear%20model-1.png)<!-- -->

### Model 2- Multiple linear Regression

-   I have used NAICS and transformed Continuing\_Approvals to predict
    transformed Initial\_Approvals in this multiple regression model
    which we can see below. This model is almost similar to the simple
    regression model in terms of performance, so we can say the earlier
    simple linear regression is better performed than this model to
    predict the response variable. Let’s try some other model

<!-- -->

    ## 
    ## Call:
    ## lm(formula = logIN_Approvals ~ logCON_Approvals + NAICS, data = train)
    ## 
    ## Residuals:
    ##     Min      1Q  Median      3Q     Max 
    ## -2.3393 -0.3523 -0.1523  0.2852  4.9617 
    ## 
    ## Coefficients:
    ##                   Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)       0.452662   0.046872   9.657  < 2e-16 ***
    ## logCON_Approvals  0.402292   0.003152 127.645  < 2e-16 ***
    ## NAICS21          -0.022437   0.059901  -0.375   0.7080    
    ## NAICS22          -0.039695   0.055011  -0.722   0.4706    
    ## NAICS23           0.080492   0.049456   1.628   0.1036    
    ## NAICS31          -0.015501   0.051537  -0.301   0.7636    
    ## NAICS32          -0.023418   0.048448  -0.483   0.6288    
    ## NAICS33           0.046364   0.047394   0.978   0.3280    
    ## NAICS42           0.012046   0.048630   0.248   0.8044    
    ## NAICS44           0.007715   0.049603   0.156   0.8764    
    ## NAICS45           0.071446   0.053027   1.347   0.1779    
    ## NAICS48           0.051878   0.054406   0.954   0.3403    
    ## NAICS49           0.113462   0.072690   1.561   0.1186    
    ## NAICS51           0.020629   0.047680   0.433   0.6653    
    ## NAICS52          -0.001538   0.047584  -0.032   0.9742    
    ## NAICS53           0.033607   0.051643   0.651   0.5152    
    ## NAICS54           0.150804   0.046880   3.217   0.0013 ** 
    ## NAICS55          -0.014780   0.061504  -0.240   0.8101    
    ## NAICS56           0.052947   0.050020   1.059   0.2898    
    ## NAICS61           0.300556   0.047819   6.285 3.31e-10 ***
    ## NAICS62           0.097304   0.047349   2.055   0.0399 *  
    ## NAICS71           0.046241   0.058008   0.797   0.4254    
    ## NAICS72           0.022434   0.054946   0.408   0.6831    
    ## NAICS81           0.063596   0.051731   1.229   0.2189    
    ## NAICS92           0.063652   0.056054   1.136   0.2562    
    ## NAICS99           0.057872   0.048048   1.204   0.2284    
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.4556 on 41332 degrees of freedom
    ## Multiple R-squared:  0.3053, Adjusted R-squared:  0.3049 
    ## F-statistic: 726.5 on 25 and 41332 DF,  p-value: < 2.2e-16

![](Readme_files/figure-gfm/multiple%20linear%20regression%20model-1.png)<!-- -->

### Model3- Poisson regression

-   I have built a poisson regression model using Continuing approvals
    to predict the initial approvals since both of them are count
    variables and non-normal. The summary of the model seems not so
    promising in predicting the Initial\_Approvals. Let’s move to the
    next model

<!-- -->

    ## 
    ## Call:
    ## glm(formula = Initial_Approvals ~ Continuing_Approvals, family = poisson, 
    ##     data = train)
    ## 
    ## Deviance Residuals: 
    ##     Min       1Q   Median       3Q      Max  
    ## -47.953   -1.968   -0.747   -0.741   94.324  
    ## 
    ## Coefficients:
    ##                       Estimate Std. Error z value Pr(>|z|)    
    ## (Intercept)          6.601e-01  3.523e-03   187.4   <2e-16 ***
    ## Continuing_Approvals 1.037e-03  1.089e-06   951.7   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## (Dispersion parameter for poisson family taken to be 1)
    ## 
    ##     Null deviance: 545453  on 41357  degrees of freedom
    ## Residual deviance: 302230  on 41356  degrees of freedom
    ## AIC: 356366
    ## 
    ## Number of Fisher Scoring iterations: 7

## Up to this point, I have attempted to construct various statistical models, such as simple and multiple linear regression models, poisson regression models. These models were intended to predict the response variable “Initial\_Approvals” using Continuing\_Approvals and NAICS. Simple linear Regression performs better of these three models. Unfortunately, my attempts to predict the response variable have not been particularly successful. It’s possible that I need to change my approach or look for errors in my model building. There is still a great deal of future work that needs to be done on this project. If you have any suggestions or would like to discuss the project further, [please to reach out to me](https://github.com/NarenderTumu/H1B-employer-data-analysis/issues/1).
