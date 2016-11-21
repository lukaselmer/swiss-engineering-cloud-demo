require 'sinatra'

get '/' do
  "<h1>Hello Swiss Engineering</h1><p>It is #{Time.now}</p>"
end

get '/simulate_work' do
  x=1
  50_000.times { x *= 2 }
  "2^50_000 is #{x}"
end

