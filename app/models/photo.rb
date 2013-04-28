class Photo < ActiveRecord::Base
  attr_accessible :album_id, :file
  validates :file, :presence => true
  belongs_to :album
  mount_uploader :file, PhotoUploader
end
