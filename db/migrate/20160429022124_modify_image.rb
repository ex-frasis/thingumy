class ModifyImage < ActiveRecord::Migration
  def change
    add_reference :images, :artwork, index; true, foreign_key: true
  end
end
