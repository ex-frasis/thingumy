class Artwork < ActiveRecord::Base
  has_and_belongs_to_many :artists
  has_and_belongs_to_many :subjects
  has_many :images
end
