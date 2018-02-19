class ReviewsController < ApplicationController

  def index

    @reviews = Review.all
    @reviews.each do |review|
      if current_user.id == review.background_id
        @review = Review.find_by(background_id: review.background_id)
      end
    end

      set_target_columns
      key = set_target_columns.map {|c| c.to_sym}
      value = set_target_columns

    if key.count == value.count
      hash = key.zip(value)
    end

  end


  def new
    @review = Review.new
    set_target_columns # メソッドを呼び出し。# id,background_id, created_at, updated_at を取り除いたReviweモデルのカラム名の配列
  end

  def create
    @review = Review.new(reviews_params)
    @review.background_id = current_user.id
    @review.save
    redirect_to reviews_path
  end

    private

      def set_target_columns # id,background_id, created_at, updated_at を取り除いたReviweモデルのカラム名の配列を作成
        columns = Review.column_names
        @target_columns = columns[2...-2]
      end

      def set_review
        @reviews = Review.all
        @reviews.each do |review|
          if current_user.id == review.background_id
            @review = Review.find_by(background_id: review.background_id)
          end
        end
      end

      def reviews_params
        params.require(:review).permit(Review.column_names.map{|c| c.to_sym})
      end


end
