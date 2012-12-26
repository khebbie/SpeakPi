require 'rubygems'  
require 'sinatra'  
require 'haml'

get '/' do  
  haml :index  
end 

post '/say' do
  message = params[:body]
  system('/home/pi/speech2.sh '+ message)
  haml :index
end
