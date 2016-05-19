class DeleteSlugFromArtist < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.remove :url_slug
    end
  end
end
