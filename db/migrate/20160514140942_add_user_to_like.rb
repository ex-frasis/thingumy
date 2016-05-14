class AddUserToLike < ActiveRecord::Migration
  def change
    change_table :likes do |t|
      t.integer :user_id, index: true, null: false
    end
  end
end
