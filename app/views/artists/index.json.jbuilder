# app/views/artists/index.json.jbuilder
=begin
json.artists @artists do |artist|
  json.id artist.id
  json.name artist.name
  json.label artist.label
end
=end

=begin
json.artists @artists do |artist|
  json.(artist, :id, :name, :label)
end
=end

=begin
json.artists @artists do |artist|
  # json.extract! artist, :id, :name, :label
  # json.extract! artist, :id, :name, :label, :name_with_label # custom info display
  json.extract! artist, :id, :name, :label

  # conditional display
  if artist.id == 1
    json.name_with_display artist.name_with_label
  end
end
=end

=begin
json.artists @artists do |artist|
  json.set! :id, artist.id
  json.set! :name, artist.name
  json.set! :label, artist.label
end
=end

=begin
json.artists @artists do |artist|
  json.extract! artist, :id, :name, :label

  json.album artist.albums do |album|
    json.album album, :id, :name, :release_date

    json.song album.songs do |song|
      json.song song, :id, :name, :release_date, :lyrics
    end
  end
end
=end

# its give an array without using root = artists
json.array! @artists do |artist|
  json.extract! artist, :id, :name, :label

  json.album artist.albums, partial: 'albums/album', as: :album
end