# app/presenters/artist_presenter.rb
class ArtistPresenter < Presenter
  def as_json(*)
    # raise @object.inspect
    {
        id: @object.id,
        name: @object.name,
        label: @object.label,
        albums: @object.albums.map {|a| AlbumPresenter.new(a)}
    }
  end
end
