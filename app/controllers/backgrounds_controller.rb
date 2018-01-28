class BackgroundsController < ApplicationController

  def index
    @backgrounds = Background.all

    # backgroundのviewに以下を記載する
    # @backgrounds.each do |background|
      # if background.user.id == current_user.id

    @background = Background.new

  end


  private

    def backgrounds_params
      params.require(:backgrounds).permit(:name, :age, :sex, :country, :occupation, :religion, :living_will, :profile_url, :notes)
    end



end
