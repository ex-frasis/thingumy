class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.text :url, null: false, index: true

      t.timestamps null: false
    end
  end
end
