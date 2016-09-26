class ArtistsController < ApplicationController

  def index
    artists = Artist.all
    render json: Oj.dump(artists.lightning, mode: :compat)
  end
end
