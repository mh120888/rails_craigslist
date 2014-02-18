class Post < ActiveRecord::Base
  attr_accessible :title, :body, :location
  belongs_to :category
end