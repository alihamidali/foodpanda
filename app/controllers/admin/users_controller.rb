class Admin::UsersController < ApplicationController

  layout 'admin'

  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end

  private

  def user_profile_update_param
    params.require(:user).permit(:first_name, :last_name, :email, :phone_no)
  end
end
