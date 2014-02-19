class Post < ActiveRecord::Base
  attr_accessible :title, :body, :location, :category_id
  validates :title, :body, :location, presence: true
  belongs_to :category
end