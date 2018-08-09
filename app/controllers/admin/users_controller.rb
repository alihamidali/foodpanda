class Admin::UsersController < ApplicationController

  skip_before_action :verify_authenticity_token
  layout 'admin'

  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @users = User.all
    @roles = Role.all
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

  def show_user_roles
    @users = User.joins(:roles).select('users.*, roles.*')
  end

  def assign_role_to_user
    @user = User.find(params[:user_id])
    @role = Role.find(params[:role_id])
    @user.roles << @role
  end

  def delete_role_from_user
    print "PARAMS: "
    puts params
    @user = User.find(params[:id])
    @role = Role.find(params[:role_id])
  end

  def remove_role_from_user
    @user = User.find(params[:user_id])
    @role = Role.find(params[:role_id])
    @user.roles << @role
  end

  private

  def user_profile_update_param
    params.require(:user).permit(:first_name, :last_name, :email, :phone_no)
  end
end
