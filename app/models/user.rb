class User < ActiveRecord::Base
  has_many :briefs
  has_many :friendships
  has_many :friends, through: :friendships, class_name: "User"

  validates :username, presence: true
  validates :password, presence: true, confirmation: true

  def timeline_ids
    friends.pluck(:id) << id
  end

  def timeline
    Brief.where(user_id: timeline_ids)
  end

  def follow_username
    
  end

  def follow(other_user)
    friendship.create! user_id: id, friend_id: other_user.id
  end

end
