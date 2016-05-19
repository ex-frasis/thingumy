class AddSlugToArtwork < ActiveRecord::Migration
  def change
    change_table :artworks do |t|
      t.string :slug, index: true
    end
  end
end
