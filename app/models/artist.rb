class Artist < ActiveRecord::Base
  has_and_belongs_to_many :artworks

  def to_s
    "#{self.first_name} #{self.last_name}"
  end
end
