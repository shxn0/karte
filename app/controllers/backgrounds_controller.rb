class BackgroundsController < ApplicationController

  def index

    if user_signed_in?
      @backgrounds = Background.all
      @backgrounds.each do |background|
        if background.user.id == current_user.id
          @background = current_user.background
        else
          render 'index'
        end
      end
    else
      redirect_to new_user_session_path
    end





    # @backgrounds = Background.all
    # @backgrounds.each do |background|
      # if background.user.nil? == true
        # render "new"
      # else background.user.id == current_user.id
        # @background = current_user.background
      # end
    # end
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
