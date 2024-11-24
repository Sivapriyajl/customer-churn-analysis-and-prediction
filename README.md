# customer-churn-analysis-and-prediction
## Description
This project aims to predict customer churn in subscription based services using Python, SQL, and Power BI.

## Table of Contents

- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Methodology](#methodology)
- [Results](#results)
- [Power BI Dashboard](#power-bi-dashboard)
- [Future Improvements](#future-improvements)
- [Contact](#contact)

  ## Project Overview

Customer churn refers to the phenomenon where customers stop using a company’s services within a specific period. For subscription-based businesses like telecom providers, understanding and predicting churn is critical, as retaining existing customers is generally more cost-effective than acquiring new ones. The project utilizes SQL for data handling, Python for data processing and modeling and Power BI to create an interactive dashboard that visualizes key insights and trends related to churn.
  
## Dataset

The Customer Churn dataset contains information on all 7,043 customers from a Telecommunications company in California. Each record represents one customer and contains details about their demographics, location, tenure, contract types, subscription services, customer status etc. Churn label is the target.
### Source
Publically available telecom customer churn Kaggle dataset in csv format.( https://www.kaggle.com/datasets/alfathterry/telco-customer-churn-11-1-3/data )
The dataset has approximately 7,043 rows and 50 columns, with each row representing an individual customer.
### Data Cleaning and Preprocessing
Dropped some of the columns which are irrelevant and not needed for analysis and prediction. Missing values in categorical column Internet Type is replaced with 'No', in column churn category missing values are replaced with 'Other' and in churn reasons with 'Don't Know'.

