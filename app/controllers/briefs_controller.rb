class BriefsController < ApplicationController

  before_action do
    if session[:user_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def index
    @users = User.all
    @briefs = current_user.briefs.order("created_at desc")
    @brief = Brief.new
    @allbriefs = Brief.all
  end

  def post
    @post = Brief.new(params.require(:brief).permit(:brief))
    @post.user = current_user
    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

end
