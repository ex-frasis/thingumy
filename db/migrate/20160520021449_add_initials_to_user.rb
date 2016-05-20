class AddInitialsToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :initials
    end
  end
end
