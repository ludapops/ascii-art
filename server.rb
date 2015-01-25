require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'artii'


# enable :sessions

get '/' do 
	erb :index
end 

get '/ascii/:word' do 
	@art = params[:word]
	a = Artii::Base.new :font => 'slant'
	@final = a.asciify(@art)
	"#{@final}"

end
