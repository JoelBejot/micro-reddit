class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :email, length: { in: 2..25 }, presence: true, uniqueness: true
  validates :email, format: { with: /\A(\S+)@(.+)\.(\S+)\z/ }
  validates :password, length: { minimum: 8 }, presence: true
  validates :city, length: { minimum: 2 }
  validates :age, numericality: { only_integer: true }, numericality: { greater_than_or_equal_to: 13 }
end
