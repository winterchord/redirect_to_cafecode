require 'sinatra'

get '/' do
  redirect 'http://cafecode.co', 301
end
