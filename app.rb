#!/usr/bin/env ruby

require 'json'
require 'sinatra'

set :port, 8080
set :bind, '0.0.0.0'
set :show_exceptions, false

post '/message' do
  content_type :json
  body = JSON.parse request.body.read
  JSON.dump({"message": "Hello #{body['name']}"})
end

get '/health' do
  body = 'OK'
end

# for all errors -> return a JSON error message
error do
  content_type :json
  JSON.dump({'message': env['sinatra.error'].message})
end
