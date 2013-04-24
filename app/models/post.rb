class Post < ActiveRecord::Base
  attr_accessible :body, :title, :category_id, :category
  validates :title, :body, :presence => true
  belongs_to :category
end
