require 'sinatra'

post '/hook' do
  content_type :json
  halt(params[:error].to_i) && return if params[:error]
  puts request.body.read
end
