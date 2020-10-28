class ReviewsController < ApplicationController

  def index
    
    if params[:search_by_rating]
      @reviews = Review.search_by_rating(params[:search_by_rating])
    else
      @reviews = Review.all  
    end  
    @reviews = Review.paginate(page: params[:page], :per_page => 5)
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create(review_params)
    json_response(@review)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render status: 200, json: {
        message: "This review has been updated successfully."
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      render status: 200, json: {
        message: "This review has been successfully removed."
      }
    end
  end
  
  private
 
  def review_params
    params.permit(:content, :rating, :user_id, :destination_id)
  end
end

