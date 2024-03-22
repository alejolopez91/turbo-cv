class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.includes(:user_studies, :user_works).find(params[:id])
  end

  def works
   @user = User.includes(:user_works).find(params[:id])
  end

  def studies
    @user = User.includes(:user_studies).find(params[:id])
  end
end
