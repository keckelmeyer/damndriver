class StatesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  def index
    @states = State.order(:name).all
    authorize User
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to @state
    else
      render 'new'
    end
  end

  def show
    @state = State.find(params[:id])
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.find(params[:id])
    if @state.update(state_params)
      redirect_to @state
    else
      render 'edit'
    end
  end

  def destroy
    @state = State.find(params[:id])
    @state.destory
    redirect_to state_path
  end

  private
    def state_params
      params.require(:state).permit(:name, :abvr)
    end
end
