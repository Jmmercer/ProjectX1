get '/' do 
    @posts = Post.order(created_at: :desc)
    erb (:index)
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

