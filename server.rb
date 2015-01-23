require 'pry'
require 'sinatra'



get '/' do 
	erb :index
end 

get '/ascii/:word' do 
	@art = params[:word]

end
