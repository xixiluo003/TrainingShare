# ======= requires =======
require "rainbow"
require "sinatra"
require "sinatra/reloader"

$users=[]

# ======= Login =======
get '/' do
	puts "\n******* login *******"
	erb :login
end


post '/sign_in' do
	puts "\n******* sign_in *******"
	puts "params.inspect: #{params.inspect}"
	erb :home
end


post '/sign_up' do
	puts "\n******* sign_up *******"
	puts "params.inspect: #{params.inspect}"

	new_user = { username:params[:username], password:params[:password] }
	puts "new_user: #{new_user}"
	$users << new_user
	puts "$users: #{$users}"
	erb :home
end

# ======= home =======
get '/home' do
	puts "\n******* home *******"
	erb :home
end

# # ======= personal =======
get '/personal' do
	puts "\n******* personal *******"
	# erb :personal
end

# # ======= share =======
get '/' do
	puts "\n******* personal *******"
	# erb :personal
end
