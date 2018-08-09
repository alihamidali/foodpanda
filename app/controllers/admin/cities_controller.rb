class Admin::CitiesController < ApplicationController

  layout 'admin'
  
  def index
    @cities = City.joins(:state).select('cities.*, states.name as state_name')

  end

  def show
    @city = City.find(params[:id])
  end

  def new
    @city = City.new
    @states = State.select(:id, :name)
  end

  def create
    @city = City.new(state_params)
    @city.thumbnail.attach(params[:thumbnail])
    if @city.save
      redirect_to(admin_cities_path)
    else
      render('new')
    end
  end

  def edit
    @city = City.find(params[:id])
    @states = State.select(:id, :name)
  end

  def update
    @city = City.find(params[:id])
    if @city.update_attributes(state_params)
      flash[:notice] = "State updated successfully."
      redirect_to(admin_cities_path)
    else
      render('edit')
    end
  end

  def delete
    @city = City.find(params[:id])
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to(admin_cities_path)
  end

  private

  def state_params
    params.require(:city).permit(:name, :state_id, :thumbnail)
  end
end
