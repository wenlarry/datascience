#Getting data off webpages
# GET from httr pkg


myapp<-oauth_app(
        "github",
 key ="a2c746afb310aef0ec98",
 secret ="5ed52a543a0754e45c605f9e45b55bbf18147846")
                  
gtoken<-config(token=github_token) 

req<-GET("https://api.github.com/users/jtleek/repos") 

stop_for_status(req) 

content(req) 

json1 = content (req) 
json2=fromJSON(toJSON(json1)) 






