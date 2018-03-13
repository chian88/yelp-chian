class BusinessesController < ApplicationController
  def index
   @businesses = Business.where(categories: params[:category])
   @category = params[:category]
  end

  def show
    @business = Business.find(params[:id])
  end

  def new 
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      flash[:success] = "Business successfully listed"
      redirect_to businesses_path(category: @business.categories)
    else
      flash[:danger] = "Business failed to be listed."
      render :new
    end
  end

  private

  def business_params
    params.require(:business).permit(:full_name, :description, :categories)
  end
end