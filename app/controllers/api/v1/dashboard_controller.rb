class Api::V1::DashboardController < ApplicationController
  def index
    load_recently_played
    load_recommendations
  end 

  private

  def load_recently_played
    @recent_albums = current_user.recently_played.order('created_at DESC').limit(5).map(&:album).uniq
  end

  def load_recommendations
    heard_categories = @recent_albums.map(&:category)
    if heard_categories.present?
      @recommended_albums = Album.joins(:category, :songs)
                                 .where(category: heard_categories)
                                 .order('songs.plays_count')
                                 .select('distinct albums.*')
                                 .limit(12)
    else 
      @recommended_albums = Album.all.sample(12)
    end 
  end 
end
