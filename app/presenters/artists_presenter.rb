# app/presenters/artists_presenter.rb
class ArtistsPresenter < Presenter
  def as_json(*)
    {
        artists: @object.map {|obj| ArtistPresenter.new(obj)}
    }
  end
end