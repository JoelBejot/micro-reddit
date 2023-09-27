class Comment < ApplicationRecord
  belongs_to :post

  validates :author, present: true 
  validates :body, length: { minimum: 1 }
end
