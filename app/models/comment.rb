class Comment < ApplicationRecord
  belongs_to :post

  validates :author, present: true 
  validates :body, length: { minimuim: 1 }
end
