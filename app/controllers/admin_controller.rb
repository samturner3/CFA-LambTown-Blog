class AdminController < ApplicationController
before_action :checkIsAdmin, only: :index

  def index
    @posts = Post.all
    @users = User.all
  end

  private
  def checkIsAdmin
    if current_user.user_type != 'admin'
     flash[:warning] = "You Cannot Access This Page"
     redirect_to root_path
    end
  end
end
