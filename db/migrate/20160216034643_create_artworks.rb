class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.text :title, null: false, index: true

      t.timestamps null: false
    end
  end
end
