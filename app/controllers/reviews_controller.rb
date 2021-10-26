class ReviewsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
        @reviews = Review.all
        render json: @reviews
    end
    
    def create
     @reviews = Review.create!(review_params)
     render json: @reviews
    end


    def show
        @review = find_review 
        render json: @review
    end

    def update
        @review = find_review
        @review.update!(review_params)
        render json: @review
    end
 
 def destroy
  @review = find_review
  review.destroy
  head :no_content
 end

  private

   def review_params
    params.require(:review).permit(:content, :user_username, :user_id, :game_id)
   end

   def find_review
      Review.find(params[:id])
   end

    def render_not_found
        render json: { error: "Review not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

  
end
