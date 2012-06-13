class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    player = Player.find_by_provider_and_uid(auth["provider"], auth["uid"].to_s) || Player.create_with_omniauth(auth)
    session[:player_id] = player.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:player_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end

