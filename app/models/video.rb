class Video < ActiveRecord::Base
  belongs_to :user
  has_many :categories
  validates :title, :link_address, presence: true
end
