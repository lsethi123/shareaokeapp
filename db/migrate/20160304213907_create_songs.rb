class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.string :genre
      t.text :lyrics
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
