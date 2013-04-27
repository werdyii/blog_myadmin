class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :name, :poroject_id, :project
  validates :name, :presence => true
end
