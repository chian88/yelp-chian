1. we need to have the model of business
#business 
full_name string
description text
categories string
timestamps

has many reviews

#user
full_name string
location string
email string
password password_digest
timestamps

has many reviews

#reviews
content text
rating integers
timestamps

belongs to both business and user


pending applicaiton 

1. search functions
4. showing 1-3442...make it work
5. pagination .. make it work


6. create, edit, destroy businesses. 


problems
1. I didn't used ajax to create a modal.