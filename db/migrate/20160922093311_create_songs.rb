class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.date :release_date
      t.text :lyrics
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
