class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.text :first_name, null: false
      t.text :last_name
      t.integer :smfa_id_number

      t.timestamps null: false
    end
  end
end
