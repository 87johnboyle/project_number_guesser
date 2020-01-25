require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
  guess = params['guess'].to_i
  msg = too_high?(guess, number)
  erb :index, :locals => {:number => number, msg:msg}
end

def too_high?(guess, number)
  if guess > (number + 5)
    'Way too high!'
  elsif guess < (number - 5)
    'Way too low!'
  elsif guess > number
    'Too high!'
  elsif guess < number
    'Too low!'
  else
    "You guessed it! The SECRET NUMBER is ... #{number}"
  end
end
