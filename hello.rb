require 'sinatra'

get '/' do
  message
end

get '/simulate_work' do
  message + calculate_number
end

def message
  power = rand(20_000) + 40_000
  [
    '<h1>Hello Swiss Engineering</h1>',
    "<p>It is #{Time.now}</p>",
    "<p><a href='/simulate_work?power=#{power}'>Calculate 2 ^ #{power}</a>",
  ].join
end

def calculate_number
  x = 1
  power = params['power'].to_i
  power.times { x = x * 2 }
  "<p>2^#{power} is #{x}</p>"
end
