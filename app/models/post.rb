class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :body, length: { minimum: 2 }
end
