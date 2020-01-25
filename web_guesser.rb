require 'sinatra'
require 'sinatra/reloader'


x_number = rand(101)

get '/' do
  "The secret number is #{x_number}"
end
