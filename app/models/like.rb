class Like < ActiveRecord::Base
  has_one :artwork
  has_one :user
end
