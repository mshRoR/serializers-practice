# app/presenters/album_presenter.rb
class AlbumPresenter  < Presenter
  def as_json(*)
    {
        id: @object.id,
        name: @object.name,
        release_date: @object.release_date,
        songs: @object.songs.map {|s| SongPresenter.new(s)}
    }
  end
end