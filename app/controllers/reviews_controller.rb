class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
    @reviews.each do |review|
      if current_user.id == review.background_id
      @review = review
    end
    end
  end


  def new
    @review = Review.new
  end

  def create
    @review = Review.new(reviews_params)
    @review.background_id = current_user.id
    @review.save
    redirect_to reviews_path
  end

    private

      def reviews_params
        params.require(:review).permit(Review.column_names.map{|c| c.to_sym})
      end

      def set_review
        @review.find(params[:id])
      end


end
