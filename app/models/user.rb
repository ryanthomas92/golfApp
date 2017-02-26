class User < ApplicationRecord
  has_many :courses
  has_secure_password
  # validates_uniqueness_of :username, :email

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
