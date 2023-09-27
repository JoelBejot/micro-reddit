class User < ApplicationRecord
  has_many :posts

  validates :email, length: { in: 2..25 }
  validates :email, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }
  validates :email, presence: true
  validates :email, uniqueness: true
end
