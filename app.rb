# ======= requires =======
require "sinatra"
require "sinatra/reloader"

$users=[]

# ======= Login =======
get '/' do
	puts "\n******* login *******"
	erb :login
end

# ======= user =======
get '/user' do
	puts "\n******* user *******"
	erb :user
end

# ======= sign_in =======
get '/sign_in' do
	puts "\n******* sign_in *******"
	puts "params.inspect: #{params.inspect}"
	redirect '/user'
end

# ======= signup =======
get '/sign_up' do
	puts "\n******* signup *******"
	erb :sign_up
end

post '/sign_up' do
	puts "\n******* sign_up *******"
	puts "params.inspect: #{params.inspect}"

	new_user = { username:params[:username], password:params[:password] }
	puts "new_user: #{new_user}"
	$users << new_user
	puts "$users: #{$users}"
	erb :user
end


# ======= share =======
get '/share' do
	puts "\n******* share *******"
	erb :share
end
