class DbController < ApplicationController
  def authorize
    if not params[:oauth_token] then
        dbsession = DropboxSession.new(APP_KEY, APP_SECRET)

        session[:dropbox_session] = dbsession.serialize #serialize and save this DropboxSession

        #pass to get_authorize_url a callback url that will return the user here
        redirect_to dbsession.get_authorize_url url_for(:action => 'authorize')
    else
        # the user has returned from Dropbox
        dbsession = DropboxSession.deserialize(session[:dropbox_session])
        dbsession.get_access_token  #we've been authorized, so now request an access_token
        session[:dropbox_session] = dbsession.serialize

        redirect_to :root
    end
  end
end