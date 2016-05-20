class AddUserIdToComment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :user_id
    end
  end
end
