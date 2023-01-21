# Bank Marketing Campaign


A Portuguese bank conducted direct marketing campaigns to encourage clients to open a term deposit account. The campaigns were conducted via phone calls and usually more than one call was made to the same customer. The overall goal is to predict if a client did open a term deposit account. 


## Business Tasks

1. Perform exploratory data analysis to discover insights

2. Predict if the client opened a term deposit account 

## About the data 

The [data](https://archive.ics.uci.edu/ml/datasets/bank+marketing) was collected from May 2008 to November 2010. The input variables include customer related data, attributes related to the last campaign contact point, social and economic values, and variables relating to previous campaigns. The output variable is whether or not the client opened a term deposit account. 

A time or term deposit bank account is a type of account that has a pre-set date of maturity. The funds must remain in the account for the specified duration in order to collect interest. The funds can be withdrawn before the maturity date but come with a penalty of paying back interest. A common type of time deposit account is a certificate of deposit (CD). 


## Variables 

`age`- numeric

`job` - categorical 

`marital_status` - categorical

`education` - categorical 

`default_status` - categorical (has credit in default)

`balance` - numeric

`housing` - categorical (has a housing loan)

`loan` - categorical (has a personal loan)

`contact` - categorical (contact communication type)

`day_of_month` - categorical (last contact day of week)

`month_name` - categorical (last contact month of year)

`duration` - numeric (last contact duration in seconds)

`campaign` - numeric (number of contacts performed during this campaign and for this client)

`pdays` - numeric (number of days that passed by after client was last contacted from previous campaign)

`previous` - numeric (number of contacts performed before this campaign for this client)

`poutcome` - categorical (outcome of previous marketing campaign)

`y` - binary (has the client subscribed to a term deposit)



## Tools

* PostgreSQL
* Python (Pandas, Matplotlib, Seaborn)
* Tableau ([dashboard on Tableau Public](https://public.tableau.com/app/profile/paijetableau/viz/BankMarketingCampaign_16726006966180/Dashboard1))

## Data Source

[Moro et al., 2014] S. Moro, P. Cortez and P. Rita. A Data-Driven Approach to Predict the Success of Bank Telemarketing. Decision Support Systems, Elsevier, 62:22-31, June 2014
