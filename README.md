# Stock-Time-Series-Analysis
Mathematical modeling for finantial time series data

Data and kernels can also found in [kaggle][3].

### Context

Stock market data can be interesting to analyze and as a further incentive, strong predictive models can have large financial payoff. The amount of financial data on the web is seemingly endless. A large and well structured dataset on a wide array of companies can be hard to come by. Here provided a dataset with historical stock prices (last 12 years) for 29 of 30 DJIA companies (excluding 'V' because it does not have the whole 12 years data).

          ['MMM', 'AXP', 'AAPL', 'BA', 'CAT', 'CVX', 'CSCO', 'KO', 'DIS', 'XOM', 'GE',

          'GS', 'HD', 'IBM', 'INTC', 'JNJ', 'JPM', 'MCD', 'MRK', 'MSFT', 'NKE', 'PFE',

          'PG', 'TRV', 'UTX', 'UNH', 'VZ', 'WMT', 'GOOGL', 'AMZN', 'AABA']

The script used to acquire all of these .csv files can be found in [jupyter notebook][1].
In the future if you wish for a more up to date dataset, this can be used to acquire new versions of the .csv files.

### Content

The data is presented in a couple of formats to suit different individual's needs or computational limitations. 
I have included files containing 13 years of stock data (in the all_stocks_2006-01-01_to_2018-01-01.csv and corresponding folder) and
a smaller version of the dataset (all_stocks_2017-01-01_to_2018-01-01.csv) with only the past year's stock data for those wishing to use something more manageable in size.

The folder individual_stocks_2006-01-01_to_2018-01-01 contains files of data for individual stocks, labelled by their stock ticker name. 
The all_stocks_2006-01-01_to_2018-01-01.csv and all_stocks_2017-01-01_to_2018-01-01.csv contain this same data, presented in merged .csv files. 
Depending on the intended use (graphing, modelling etc.) the user may prefer one of these given formats.

All the files have the following columns:
Date - in format: yy-mm-dd 

Open - price of the stock at market open (this is NYSE data so all in USD)

High - Highest price reached in the day

Low	Close - Lowest price reached in the day

Volume - Number of shares traded

Name - the stock's ticker name

### ARIMA Modeling

This [Rmarkdown notebook][2] provides a step-by-step guide for fitting an ARIMA model on the stock data, using packages in R.
You can use it as a tutorial for learning Time Series Modeling.

### Inspiration

This dataset lends itself to a some very interesting visualizations. One can look at simple things like how prices change over time, graph an compare multiple stocks at once, or generate and graph new metrics from the data provided.
From these data informative stock stats such as volatility and moving averages can be easily calculated.
The million dollar question is: can you develop a model that can beat the market and allow you to make statistically informed trades!

### Acknowledgement 

This Data description is adapted from the dataset named 'S&P 500 Stock data'.
This data is scrapped from Google finance using the python library 'pandas_datareader'. Special thanks to Kaggle, Github and the Market.

  [1]: https://github.com/szrlee/Stock-Time-Series-Analysis/blob/master/data_collection.ipynb
  [2]: https://github.com/szrlee/Stock-Time-Series-Analysis/blob/master/ARIMA_R/script.Rmd
  [3]: https://www.kaggle.com/szrlee/stock-time-series-20050101-to-20171231
