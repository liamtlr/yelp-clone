class ReviewsController < ApplicationController

  def new
    @user = current_user
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.build_review_with_user_foreign_key(reviews_params, current_user)
    if @review.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

private

  def reviews_params
    params.require(:review).permit(:thoughts, :rating)
  end

end
