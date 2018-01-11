arima_modeling <- function(xts, ts, ticker){
  ## Stationarity
  print(ticker)
  adf.test(xts, alternative = "stationary", k = 0)

  ## Decomposing Time Series
  tscomponents <- decompose(ts)
  plot(tscomponents, col = "red")

  ## Differencing a Time Series
  xtsdiff1 <- diff(xts, differences=1)
  tsdiff1 <- diff(ts, differences=1)
  plot.xts(xtsdiff1, col = "blue")
  findfrequency(xts)          # find dominant frequency of original time series
  findfrequency(xtsdiff1)     # find dominant frequency of differenced time series

  ## Selecting a Candidate ARIMA Model
  print(ticker)
  print("Selecting a candidate ARIMA Model")
  Acf(xtsdiff1, lag.max=60)             # plot a correlogram
  Acf(xtsdiff1, lag.max=60, plot=FALSE) # get the autocorrelation values

  Pacf(xtsdiff1, lag.max=60)             # plot a partial correlogram
  Pacf(xtsdiff1, lag.max=60, plot=FALSE) # get the partial autocorrelation values
  
  ## Fitting an ARIMA Model
  tsarima <- auto.arima(head(xts, -30), max.p = 3, max.q = 3, max.d = 3)
  
  # excluding last 120 time series as test data
  print(tsarima)
  autoplot(tsarima)
  print(ticker)

  ## Forecasting using an ARIMA Model
  print(ticker)
  tsforecasts <- forecast(tsarima, h = 30) # forecast the next 120 time series
  accuracy(tsforecasts, head(tail(xts, 30), 7))
  autoplot(tsforecasts)
  
  print(ticker)
  
  ggplot(data.frame(residuals = tsforecasts$residuals), aes(residuals)) + geom_histogram(bins = 50, aes(y = ..density..), col = "red", fill = "red", alpha = 0.3) + geom_density()# make a histogram
  checkresiduals(tsforecasts)
}