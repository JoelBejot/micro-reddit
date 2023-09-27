class User < ApplicationRecord
  has_many :posts

  validates :email, present: true
  # validates_format_of :email
    # :with => /\A(\S+)@(.+)\.(\S+)\z/
  validates :password, length: { in: 6..20 }
end
