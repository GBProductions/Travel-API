class ReviewController < ApplicationController

  def index
    @review = review.all
    if params[:page]
      page = params[:page]
      @reviews = review.search(page)
    end
    json_response(@reviews)
  end

  def show
    @review = review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = review.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @review = review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @review = review.find(params[:id])
    if @review.destroy
      render status: 200, json: {
        message: "This review has been successfully removed."
      }
    end
  end

  private

  def review_params
    params.permit(:rating, :content, :user_id, :destination_id)
  end
  
end