---
title       : "Shiny App for the\n Forbes Global 2000 dataset 2017"
subtitle    : "Coursera Data Science Specialization"
author      : "Luis David Bedon Gomez"
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---


## Introduction

`Visualizing the Forbes Global 2000 dataset from 2017`


This App aims to provide a handling data visualization for 
*Forbes Global 2000* dataset from 2017 as part of the Data Products Course in the Data Science Specialization
from the [Johns Hopkins University](http://www.jhu.edu) in [Coursera](https://www.coursera.org/specializations/jhu-data-science).

The dataset was downloaded from [kaggle](https://www.kaggle.com/ash316/forbes-top-2000-companies).

---


## The Forbes Global 2000 dataset 2017 - Columns

```r
data<-read.csv("Forbes2000_2017_WorldBank.csv")
str(data,vec.len = 2)
```

```
## 'data.frame':	2000 obs. of  13 variables:
##  $ X           : int  1 2 3 4 5 ...
##  $ Rank        : int  1 2 3 4 5 ...
##  $ Country     : Factor w/ 61 levels "Argentina","Australia",..: 10 10 59 59 59 ...
##  $ Company     : Factor w/ 1999 levels "3i Group","3M",..: 921 393 277 1021 1927 ...
##  $ Sales       : num  151 134 ...
##  $ Profits     : num  42 35 24.1 24.2 21.9 ...
##  $ Assets      : num  3473 3017 ...
##  $ Market.Value: num  230 200 ...
##  $ Sector      : Factor w/ 11 levels "Consumer Discretionary",..: 4 4 4 4 4 ...
##  $ Industry    : Factor w/ 81 levels "","Advertising",..: 53 69 50 53 53 ...
##  $ Return      : num  27.7 26.1 ...
##  $ IncomeGroup : Factor w/ 3 levels "High income",..: 3 3 1 1 1 ...
##  $ Region      : Factor w/ 7 levels "East Asia & Pacific",..: 1 1 5 5 5 ...
```
  - `Rank`          - Rank number             
  - `Country`       - Company's Country   
  - `Company`       - Company's name 
  - `Sales`         - in Billions USD
  - `Profits`        in Billions USD
  - `Assets`      - in Billions USD
  - `Market.Value`  - Market Value in billions USD
  - `Sector`        - Description of the Sector
  - `Industry`      - Description of the Industry
  - `Return`        - Ratio Profits/Sales in %
  - `IncomeGroup`   - Country's Income Group from the World Bank
  - `Region`        - as assigned by the World Bank

<!-- The information **IncomeGroup** and **Region** was extracted from the [World Bank](http://databank.worldbank.org/data/home.aspx). -->

---
##  Overall layout

<div style='text-align: center;'>
    <img height='300' src='screenshotAppSideBar.png' />
</div>

`Sidebar with Filters for`

- Rank interval - Country - Region - Sector - Industry

---
##  Overall layout

<div style='text-align: center;'>
    <img height='300' src='screenshotAppMain.png' />
</div>

`Main` 

Displaying the reactive data table with your filtered information

Thank you!






