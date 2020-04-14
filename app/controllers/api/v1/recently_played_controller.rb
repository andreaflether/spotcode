class Api::V1::RecentlyPlayedController < ApplicationController
  def create
    @recently_played = current_user.recently_played.create(album_id: params[:id])
    head :ok
  end 
end
