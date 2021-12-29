# what is a server - PROGRAM LISTENS FOR REQUEST SERVES YOU


# web http, file, database, email


# someone that brings you food usually HTML (JSON)
# big mashine
# where everything is hosted
# store everything - resources
# fullfills request

# writing a server app
# static websites - storing files on the server

# index.html
# style.css         
# app.js


# server side programming


# sinatra - framework to help make web apps
#         - microframework
#         - library vs framework
#         - lbrary is just a collection of functions 
#         - DSL domain specific language
require 'stock_quote'
require "sinatra"
require "sinatra/reloader"
require pry # restart server when you change this file
# require 'pry' # so that we can use binding

# route 
# menu item customers can request
get '/cheeseburger' do
# response that the shopkeeper to give out 

"here is yours"
end



get '/chips' do
    "sorry we don't have chips"

end


get '/what_time_is_it' do
 
    Time.now.to_is 
end



# frontend
# backend


# client side developement/programming
# server side developement programming


get '/what_is_one_plus_one' do
    result = 1 + 1

    result.to_s
end


get '/hello' do
    # special built in hash named params
name = params["name"]
"hello there #{ name }"

end



# query strings



get '/add' do

num1 = params["num1"].to_i
num2 = params["num2"].to_i

total = num1 + num2

"the total is #{total}"
end

# http://localhost:4567/stock?ticker=tsla
# http://localhost:4567/stock?ticker=msft




 
require 'stock_quote' # dependency - need for the Stock.quote()


# setup the api key
StockQuote::Stock.new(api_key: "pk_c4c28ce0e54e460aa56b304ddabc5202")


# ticker
# microsoft - msft
# apple - aapl
puts "welcome stock quote app"
print "enter a stock ticker: "
ticker = gets.chomp

stock = StockQuote::Stock.quote(ticker)


puts stock.company_name
puts stock.latest_price



# anything after the ? question mark
# query string
# key value pairs
# t=jaws
# apikey=2f6435d9
  
# http://omdbapi.com/?t=jaws&apikey=2f6435d9

#json
# javascript object object notation












               #Domain
 #                |
 #protocal        |
 #   |            |
 # http://localhost:4567/cheeseburger?name=paris
 #                    |     |           |
#                    port   |          query string
 #                          path


