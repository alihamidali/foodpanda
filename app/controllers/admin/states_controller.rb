class Admin::StatesController < ApplicationController
  layout 'admin'

  def index
    @states = State.joins(:country).select('states.name as state_name, states.id, states.country_id, countries.name as country_name')
    # @states = State.includes(:country)
    # @states
  end

  def show
    @state = State.find(params[:id])
  end

  def new
    @state = State.new
    @countries = Country.select(:id, :name)
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to(admin_states_path)
    else
      render('new')
    end
  end

  def edit
    @state = State.find(params[:id])
    @countries = Country.select(:id, :name)
  end

  def update
    @state = State.find(params[:id])
    if @state.update_attributes(state_params)
      flash[:notice] = "State updated successfully."
      redirect_to(admin_states_path)
    else
      render('edit')
    end
  end

  def delete
    @state = State.find(params[:id])
  end

  def destroy
    @state = State.find(params[:id])
    @state.destroy
    redirect_to(admin_states_path)
  end

  private

  def state_params
    params.require(:state).permit(:name, :country_id)
  end
end
