# encoding: UTF-8
require 'rubygems'  
require 'sinatra'  
require 'haml'
require 'open-uri'

get '/' do  
  haml :index  
end 

post '/say' do
  message = params[:body]
  system("./speech2.sh '#{message}'")
  haml :index

end
