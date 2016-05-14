class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :artwork_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
