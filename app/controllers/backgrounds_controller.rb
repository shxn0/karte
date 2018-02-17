class BackgroundsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_background, only:[:show, :edit, :update, :destroy]

  def index
    if user_signed_in?
      @backgrounds = Background.all
      @backgrounds.each do |background|
        if background.user_id == current_user.id
          @background = current_user.background
          @medicines = background.medicines
          @medicine = background.medicines.build
          @allergies = background.allergies
          @allergy = background.allergies.build
        end
      end
    end
  end

  def new
    @background = Background.new
  end

  def edit

  end

  def create
    @background = Background.new(backgrounds_params)
    @background.user_id = current_user.id
    if @background.save
      redirect_to backgrounds_path, notice:"Your registration has been compleated"
    else
      render "new" if @background.invalid?
    end
  end

  def update
    @background.update(backgrounds_params)
    if @background.invalid?
      render 'edit'
    else
      redirect_to backgrounds_path
    end
  end

  private

    def backgrounds_params
      params.require(:background).permit(:name, :age, :sex, :country, :occupation, :religion, :living_will, :notes)
    end

    def set_background
      @background = Background.find(params[:id])
    end

end
