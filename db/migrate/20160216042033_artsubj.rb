class Artsubj < ActiveRecord::Migration
  def change
    create_join_table :artworks, :subjects do |t|
      t.index :artwork_id
      t.index :subject_id
    end
  end
end
