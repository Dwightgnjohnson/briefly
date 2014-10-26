class User < ActiveRecord::Base
  has_many :briefs
  has_many :friendships
  has_many :friends, :through => :friendships, class_name: "User"
  validates :username, presence: true
  validates :password, presence: true, confirmation: true
end
