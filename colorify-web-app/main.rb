require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb(:index, { :layout => :layout })
end

get '/random_color' do

  colors = [
    'mistyrose',
    'mintcream',
    'darkolivegreen'
  ]

  erb(:color, locals: {
    color: colors.sample
  })
end

get '/donate' do
  erb(:donate)
end