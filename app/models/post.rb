class Post < ActiveRecord::Base
  attr_accessible :title, :body, :location, :category_id
  belongs_to :category
end