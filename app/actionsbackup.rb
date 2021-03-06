def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do 
    
    @post_walrus = {
    
    username: "TheWalrus",
    avatar_url: "/walrus-003.jpg",
    photo_url: "/walrus-003.jpg",
    humanized_time_ago: humanized_time_ago(15),
    like_count: 0,
    comment_count: 1,
    comments: [{
        username: "TheWalrus",
        text: "Wulrusezz 4 the win!!"
        }]  
    }
    
    @post_whale = {
        username: "kirk_whalum",
        avatar_url: "http://naserca.com/images/kirk_whalum.jpg",
        photo_url: "http://naserca.com/images/whale.jpg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "kirk_whalum",
            text: "weekendvibes"
        }]
    }
    
    @post_marlin = {
        username: "marlin_peppa",
        avatar_url: "http://naserca.com/images/marlin_peppa.jpg",
        photo_url: "http://naserca.com/images/marlin.jpg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "marlin_peppa",
            text: "lunchtime! ;)"
        }]
    }
    
    
@posts =  [@post_walrus, @post_whale, @post_marlin]
    
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

