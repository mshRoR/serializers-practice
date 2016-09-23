class ArtistsController < ApplicationController

  def index
    # render json: Artist.all
    @artists = Artist.all
  end
end
