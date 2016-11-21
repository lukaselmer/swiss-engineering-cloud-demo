require 'sinatra'

get '/' do
  "Hello Swiss Engineering, it is #{Time.now}"
end
