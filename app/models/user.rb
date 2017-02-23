class User < ApplicationRecord
  has_many :courses
  has_secure_password
  validates_uniqueness_of :username, :email

end
