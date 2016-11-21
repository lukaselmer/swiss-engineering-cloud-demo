require 'sinatra'

get '/' do
  power = rand(20_000) + 40_000
  [
    '<h1>Hello Swiss Engineering</h1>',
    "<p>It is #{Time.now}</p>",
    "<p><a href='/simulate_work?power=#{power}'>Calculate 2 ^ #{power}</a>",
    "<p><a href='/'>Different number</a>"
  ].join
end

get '/simulate_work' do
  x = 1
  power = params['power'].to_i
  power.times { x = x * 2 }
  "2^#{power} is #{x}"
end

