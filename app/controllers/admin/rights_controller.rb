class Admin::RightsController < ApplicationController
  layout 'admin'
  
  def index
    @rights = Right.all
  end

  def show
    @right = Right.find(params[:id])
  end

  def new
    @right = Right.new
  end

  def create
    @right = Right.new(right_params)
    if @right.save
      redirect_to(admin_rights_path)
    else
      render('new')
    end
  end

  def edit
    @right = Right.find(params[:id])
  end

  def update
    @right = Right.find(params[:id])
    if @right.update_attributes(right_params)
      flash[:notice] = "right updated successfully."
      redirect_to(admin_rights_path)
    else
      render('edit')
    end
  end

  def delete
    @right = Right.find(params[:id])
  end

  def destroy
    @right = Right.find(params[:id])
    @right.destroy
    redirect_to(admin_rights_path)
  end

  private

  def right_params
    params.require(:right).permit(:name)
  end
end
