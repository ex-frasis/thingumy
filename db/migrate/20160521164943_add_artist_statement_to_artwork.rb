class AddArtistStatementToArtwork < ActiveRecord::Migration
  def change
    change_table :artworks do |t|
      t.text :artist_statement
    end
  end
end
