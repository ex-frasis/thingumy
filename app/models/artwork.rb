class Artwork < ActiveRecord::Base
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :subjects
  has_many :images
  has_many :comments

  def artist_name
    self.artists.first.to_s
  end
end
