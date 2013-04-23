class Post < ActiveRecord::Base
  attr_accessible :body, :title, :category_id, :category
  belongs_to :category
end
