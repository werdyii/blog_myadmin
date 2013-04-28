class Photo < ActiveRecord::Base
  attr_accessible :album_id, :file
  validates :file, :presence => true
  belongs_to :albums
end
