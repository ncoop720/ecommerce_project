class AdminController < ApplicationController
	before_action :authenticate_user!, except: [:users]

  def users
  	@users = User.all
  end

  def edit_user
  	authorize! :manage, User
  	user = User.find(params[:id])
  	user.update(role: params[:role])
  	redirect_back(fallback_location: users_path)
  end
end
