require 'sinatra'

get '/*' do
  unless params['splat']
    redirect "http://cafecode.co", 301
  end

  url_path = params['splat'].join
  redirect "http://cafecode.co/#{url_path}", 301
end
