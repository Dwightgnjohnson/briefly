class User < ActiveRecord::Base
  has_many :briefs
  validates :username, presence: true
  validates :password, presence: true
end
