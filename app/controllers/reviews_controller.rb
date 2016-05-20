class ReviewsController < ApplicationController
  attr_accessor :plate

  def new
    @review = Review.new
    #state_array = State.all.map{|s| [s.name, s.abvr, s.id]}
    #@state_opt = State.order(:name).all.map{|s| [s.name]}
    #@category_opt = Category.order(:name).all.map{|c| [c.name]}
    #@rating_opt = Rating.order(:stars).all.map{|r| [r.stars]}
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      flash[:success] = "Your rating has been received!"
      redirect_to root_url
    else
      flash[:alert] ="There was an error. Please resubmit."
      render 'new'
    end

  end

  private
  def review_params
    params.require(:review).permit(:state, :plate, :category, :rating)
  end
end
