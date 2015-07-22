class User < ActiveRecord::Base
  validates :firstname, :lastname, :email, :username, :description, presence: true
  validates :email, uniqueness: true
end
