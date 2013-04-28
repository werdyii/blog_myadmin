class Album < ActiveRecord::Base
  attr_accessible :name
	validates :name, :presence => true
	has_many :photos, :dependent => :destroy
end
