class User < ActiveRecord::Base
  has_many :subscribers
  has_many :videos
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, :lastname, :email, :username, :description, presence: true
  validates :email, uniqueness: true

end
