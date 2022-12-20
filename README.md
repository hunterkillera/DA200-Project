# DA200-Project
Analyze Boston Crime Data

getdata.R loads the data I downloaded from https://osf.io/zyaqn/wiki/3.%20Get%20the%20data/ (2016-2021) Since the dataset contains multiple cities in the US, I sorted the Boston Data. 

inspectdata.R inspects some data in the whole data set. The main columns are offense_against, offense_group and offense_type. I created a table for different variables and their frequencies.

offensive_against.R creates histograms for offensive against column.

offense_type.R creates histograms for offensive type column.

xgboost-cv.ipynb did an time series analysis for our data. I used the reference from https://www.kaggle.com/code/robikscube/pt2-time-series-forecasting-with-xgboost/notebook

