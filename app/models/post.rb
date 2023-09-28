class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id, presence: true
  validates :title, length: { in: 0..64 } unless :title.present?
  validates :body, length: { minimum: 2 }
end
