class CreateJoinTableArtistArtwork < ActiveRecord::Migration
  def change
    create_join_table :artists, :artworks do |t|
      t.index :artist_id
      t.index :artwork_id
    end
  end
end
