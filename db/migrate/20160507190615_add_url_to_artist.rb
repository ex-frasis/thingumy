class AddUrlToArtist < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.string :url_slug, index: true
    end
  end
end
