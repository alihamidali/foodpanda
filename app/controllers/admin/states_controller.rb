class Admin::StatesController < ApplicationController
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
      redirect_to(country_path)
    else
      render('new')
    end
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update

  end

  def delete
    @country = Country.find(params[:id])
  end

  def destroy
    @country = Country.find(params[:id])
  end

  private

  def country_params
    params.require(:country).permit(:first_name, :last_name, :email, :phone_no)
  end 
end
