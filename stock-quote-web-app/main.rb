
require 'sinatra'

# need to install sinatra-contrib for reloader
require 'sinatra/reloader'

# functions to get stock info
require 'stock_quote'

require 'pry'

StockQuote::Stock.new(api_key: "pk_c4c28ce0e54e460aa56b304ddabc5202")


# use templates as a built in feature in sinatra
# mkdir views and put your templates in there
# mkdir public for any files the client can have access to
# convention over configuration
# 

# if path == "/"

# elsif path == "/stock"

# elsif path == "/about"

# end



get '/' do
  year = 2021

  erb(:index, locals: { 
    current_year: year,
    slogan: "ho ho ho"
  })
end

get '/stock' do
  ticker = params["ticker"]
  stock = StockQuote::Stock.quote(ticker)

  company_name = stock.company_name
  price = stock.latest_price

  erb(:stock_details, locals: {
    company_name: company_name,
    price: price
  })
end

get '/about' do
  erb(:cake)
end

get '/popular_stocks' do

  # msft microsoft
  # tsla tesla
  # aapl apple

  # tickers = [
  #   ['msft', 'microsoft'], 
  #   ['tsla', 'tesla'], 
  #   ['aapl', 'apple'], 
  #   ['googl', 'google'], 
  #   ['nflx', 'netflix']
  # ]

  tickers = {
    msft: 'microsoft',
    tsla: 'tesla',
    aapl: 'apple',
  }


  erb(:poplar_stocks, locals: { 
    tickers: tickers
  })
end




#everything you do in the browser is about make http requests
# - address bar
# - link / anchor
# - form
# mkdir public for any files the clients can have access to
# convention for configuration 