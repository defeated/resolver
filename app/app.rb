require 'sinatra'
require 'json'
require 'resolv'
require 'resolv-replace'

get '/' do
  ip        = request.ip
  host      = Resolv.getname ip

  data      = { ip: ip, host: host }.to_json
  callback  = params[:callback]

  if callback
    content_type :js
    "#{ callback }( #{ data } )"
  else
    content_type :json
    data
  end
end
