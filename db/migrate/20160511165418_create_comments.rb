class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :artwork_id, null: false, index: true
      t.boolean :show, default: true

      t.timestamps null: false
    end
  end
end
