class User < ApplicationRecord
  has_many :posts
  #bcrypt scrambling the password
  has_secure_password
  # validations - the name is unique and thge password is there. It's hopefully only me using this but I may want other people to post in future
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :password, :presence => true
end
