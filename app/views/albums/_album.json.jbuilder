# app/views/albums/_album.json.jbuilder
json.(album, :id, :name, :release_date)
json.song album.songs, partial: 'songs/song', as: :song