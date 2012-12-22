require 'dropbox_sdk'

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
