class ProfilesController < ApplicationController
  def show
    @user = User.find_by username: params[:username]

    @users = User.all


  end
end
