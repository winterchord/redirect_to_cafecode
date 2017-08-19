require 'sinatra'
require_relative 'lib/redirector'

get '/*' do
  redirect Redirector.link(splat: params['splat'], redirect_campaign: true), 301
end
