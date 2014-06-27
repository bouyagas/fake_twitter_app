require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup' 
require 'rack-flash'
require './model'

enable :sessions
use Rack::Flash, :sweep => true
set :sessions, true
set :database, 'sqlite3:///test.sqlite3'


 
 get '/' do 
  @keyword = "Welcome"
 	erb :home
 end 


post '/sign-in' do
@user && @user = User.where(username: params[:username]).first
 if @uesr && @user.password == params[:password]
 flash[:notice] = "ou’ve been signed in 
 successfully."
 redirect "/"
 else
 flash[:alert] = "here was a problem signing you 
 in."
 redirect "login-failed"
end
	@header = "Welcome to my app"
  erb :index
end

get '/sign-up' do
  erb :index
end

