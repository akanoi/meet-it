class UsersController < ApplicationController
  def new
  end

  def profile
    @page_title = "Profile"
    @user = User.find(params[:user_id]) rescue nil
  end
end
