class Admin::CitiesController < ApplicationController
  before_action :authenticate_user!
  
  layout 'admin'

  def index

  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end