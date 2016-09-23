# app/presenters/song_presenter.rb
class SongPresenter  < Presenter
  def as_json(*)
    {
        id: @object.id,
        name: @object.name,
        release_date: @object.release_date,
        lyrics: @object.lyrics
    }
  end
end