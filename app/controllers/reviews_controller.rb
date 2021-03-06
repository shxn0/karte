class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only:[:edit,:update, :destroy]

  def index
    @reviews = Review.all
    @reviews.each do |review|
      # if current_user.id == review.background_id
      if review.background_id == current_user.background.id
        @review = Review.find_by(background_id: review.background_id)
        @only_true_review = @review.attributes.select{|k, v| v ==  true} # @reviewからattributesで属性をハッシュ形式で取得後にtrueの値のみをインスタンス変数に代入
      end
    end
    set_target_columns
  end

  def new
    @review = Review.new
    set_target_columns # メソッドを呼び出し。# id,background_id, created_at, updated_at を取り除いたReviweモデルのカラム名の配列
  end

  def create
    @review = Review.new(reviews_params)
    @review.background_id = current_user.background.id
    if @review.save
      redirect_to reviews_path
    else
      set_review
      set_target_columns
      render 'index', notice: "review has already been created. "
    end
  end

  def edit
    set_target_columns
  end

  def update
    @review.update(reviews_params)
    redirect_to reviews_path
  end

  def destroy
    @review.destroy
    redirect_to reviews_path
  end

  private

    def set_target_columns # Reviweモデルのカラム名からid,background_id, created_at, updated_at カラムを取り除いた配列を作成するメソッド
      columns = Review.column_names
      @target_columns = columns[2...-2] # HACK: Reviewsテーブルにカラム追加した際に代入する要素がずれる可能性がある
    end

    def set_review
      @reviews = Review.all
      @reviews.each do |review|
        if review.background_id == current_user.background.id
          @review = Review.find_by(background_id: review.background_id)
        end
      end
    end

    def reviews_params
      params.require(:review).permit(Review.column_names.map{|c| c.to_sym})
    end

end
