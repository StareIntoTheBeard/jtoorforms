require 'dropbox_sdk'

# This is an example of a Rails 3 controller that authorizes an application
# and then uploads a file to the user's Dropbox.

# Test env values here:
# APP_KEY = "lpzgnc3v39u2527"
# APP_SECRET = "a0pj795b0gy1fi4"
# ACCESS_TYPE = :app_folder
#prod below
APP_KEY = DROPBOX_CONFIG['app_key']
APP_SECRET = DROPBOX_CONFIG['app_secret']
ACCESS_TYPE = :dropbox 
#The two valid values here are :app_folder and :dropbox
                          #The default is :app_folder, but your application might be
                          #set to have full :dropbox access.  Check your app at
                          #https://www.dropbox.com/developers/apps



class ApplicationController < ActionController::Base
  protect_from_forgery

end
