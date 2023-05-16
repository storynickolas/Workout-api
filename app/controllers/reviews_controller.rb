class ReviewsController < ApplicationController

  def index
    r ender json: Review.all
  end

  def show
    review = Review.where(:id => params[:id])
    if exercise
      render json: review
    else
      render_not_found_response
    end
  end

end
