class ProfilesController < ApplicationController

  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def show
    @user = User.find_by username: params[:username]
    @users = User.all
  end


  def follow
    @follow.followed_at = DateTime.now
    redirect_to root_path
  end


  def create_friendship
    @new_friendship = Friendship.new(user_id: session[:user_id], friend_id: params[:friend_id])
    if @new_friendship.save
      redirect_to root_path
    else
      redirect_to profile_path(id: params[:friend_id])
    end
  end

  def destroy_friendship
    Friendship.find_by(user_id: params[:user_id], friend_id: params[:friend_id]).destroy
    redirect_to profile_path(id: params[:friend_id])
  end

end
