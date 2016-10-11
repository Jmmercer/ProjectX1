helpers do 
    def current_user
        User.find_by(id: session[:user_id])
    end
end 

get '/' do 
    @posts = Post.order(created_at: :desc)
    #@current_user = User.find_by(id: session[:user_id])
    erb(:index)
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
    redirect to('/login')
else
    erb(:signup)
    
end
end

get '/login' do
    erb(:login)
end

post '/login' do
   username = params[:username]
   password = params[:password]
   user = User.find_by(username: username)
if user && user.Password == password
    session[:user_id] = user_id
    redirect to('/')
      # "Success! User with session id #{session(:user_id)} is logged in! "
else 
       @error_message = "Login Failed."
       erb(:login)
end
end

get '/logout' do 
    session[:user_id] = nil
    redirect to('/')
    #"logout successful."
end

get '/posts/new' do 
    erb(:"posts/new")
end

post '/posts' do 
    photo_url = params[:photo_url]
    @post = Post.new({ photo_url: photo_url, user_id: current_user. id })
    if @post.save
        redirect(to('/'))
    else
        erb(:"posts/new")
    end
end

get '/posts/:id' do
    @post =Post.find(params[:id])
    erb(:"posts/show")
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

