get '/' do 
    @posts = Post.order(created_at: :desc)
    erb (:index)
end

get '/signup' do
    @user = User.new
    erb(:signup)
end

post '/signup' do 
    email = params[:email]
    avatar_url = params[:avatar_url]
    username = params[:username]
    passsword = params[:password]
    
@user = User.new({ email: email, username: username, password: password }) 

if @user.save 
    "User #{username} saved!" 
else
    erb(:signup)
    
end
end

#if time_ago_in_minutes > 60
#    "more than an hour ago"
#    elsif time_ago_in_minutes == 60
#        "an hour ago"
#    elsif "time_ago_in_minutes" <= 1
#        "just a moment ago"
#    else
#        "less than an hour ago"
#   end 

