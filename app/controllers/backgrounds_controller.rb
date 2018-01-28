class BackgroundsController < ApplicationController

  def index
    @backgrounds = Background.all
    @backgrounds.each do |background|
    # if background.user.id == current_user.id

    end
  end

  def new
    @background = Background.new
  end

  def create
    @background = Background.new(backgrounds_params)
    if @background.save
      redirect_to backgrounds_path, notice:"Your registration has been compleated"
    else
      render "new" if @background.invalid?
    end
  end



  private

    def backgrounds_params
      params.require(:background).permit(:name, :age, :sex, :country, :occupation, :religion, :living_will, :notes)
    end

end
