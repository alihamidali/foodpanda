class Admin::RolesController < ApplicationController
  layout 'admin'
  
  def index
    @roles = Role.all
  end

  def show
    @role = Role.find(params[:id])
  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      redirect_to(admin_roles_path)
    else
      render('new')
    end
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])
    if @role.update_attributes(role_params)
      flash[:notice] = "role updated successfully."
      redirect_to(admin_roles_path)
    else
      render('edit')
    end
  end

  def delete
    @role = Role.find(params[:id])
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to(admin_roles_path)
  end

  private

  def role_params
    params.require(:role).permit(:name)
  end
end
