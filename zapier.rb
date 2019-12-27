require 'sinatra'

post '/hook' do
  content_type :json
  halt(params[:error].to_i) && return if params[:error]
  params.to_json
end
