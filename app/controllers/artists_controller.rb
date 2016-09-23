class ArtistsController < ApplicationController

  def index
    render json: ArtistsPresenter.new(Artist.all)
  end

  def show_albums
    render json: AlbumsPresenter.new(Album.all)
  end
end
