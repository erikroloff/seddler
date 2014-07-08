class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :post_comments
end
