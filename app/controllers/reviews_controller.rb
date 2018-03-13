class ReviewsController < ApplicationController
  before_action :require_user

  def new
    @business = Business.find(params[:business_id])
    @review = Review.new
  end

  def create
    @business = Business.find(params[:business_id])
    @review = @business.reviews.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      flash[:success] = "Reviews created by #{current_user.full_name}"
      redirect_to business_path(@business)
    else

    end
  end

  def edit
    @review = Review.find(params[:id])
    @business = @review.business
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:success] = "Reviews successfully updated"
      redirect_to business_path(@review.business)
    else

    end
  end

  def destroy
    Review.delete(params[:id])
    redirect_back fallback_location: root_path
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end