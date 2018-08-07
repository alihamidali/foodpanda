class Admin::CountriesController < ApplicationController

  layout 'admin'
  
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to(admin_countries_path)
    else
      render('new')
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update_attributes(country_params)
      flash[:notice] = "Country updated successfully."
      redirect_to(admin_countries_path)
    else
      render('edit')
    end
  end

  def delete
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id])
  end

  private

  def country_params
    params.require(:country).permit(:name)
  end
end
