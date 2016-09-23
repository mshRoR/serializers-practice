# app/presenters/albums_presenter.rb
class AlbumsPresenter < Presenter
  def as_json(*)
    {
        albums: @object.map {|album| AlbumPresenter.new(album)}
    }
  end
end