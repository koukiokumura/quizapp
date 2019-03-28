class ReviewsController < ApplicationController

  def new
    @content = Content.find(params[:content_id])
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to controller: :contents, action: :index
  end

  private
  def review_params
    params.require(:review).permit(:rate).merge(content_id: params[:content_id])
  end
end
