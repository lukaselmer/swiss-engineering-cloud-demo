require 'sinatra'

get '/' do
  "<h1>Hello Swiss Engineering</h1><p>It is #{Time.now}</p>"
end

get '/sleep' do
  sleep(5)
  "<h1>Good morning</h1><p>I just slept for 5 seconds.</p>"
end
