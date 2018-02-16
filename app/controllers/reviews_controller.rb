class ReviewsController < ApplicationController

  def index
    if user_signed_in?
      @reviews = Review.all
      @reviews.each do |review|
        if review.user_id == current_user.id
          @reviews = current_user.review
        end
      end
    end
  end

  def new
    @review = Review.new
  end


end
