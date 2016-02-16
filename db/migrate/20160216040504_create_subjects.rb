class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.text :display_name

      t.timestamps null: false
    end
  end
end
