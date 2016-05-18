class RatingsController < ApplicationController
  def index
    @ratings = Rating.order(:name).all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(params)
    if @rating.save
      flash[:success] = "Your rating has been received!"
      redirect_to @rating
    else
      flash[:alert] ="There was an error. Please resubmit."
      render 'new'
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    if @rating.update(params)
      redirect_to @rating
    else
      render 'edit'
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destory
    redirect_to ratings_path
  end

  private
    def params
      params.require(:rating).permit(:stars)
    end
end
