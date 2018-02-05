class AllergiesController < ApplicationController

  def create
    @allergy = current_user.background.allergies.build(allergies_params)
    respond_to do |format|
      if @allergy.save
        format.html {redirect_to backgrounds_path}
        format.js {render :index}
      else
        format.js{render :index}
      end
    end
  end

  def destroy
    @allergy = Allergy.find(params[:id])
    respond_to do |format|
      if @allergy.destroy
        format.html {redirect_to background_path}
        format.js {render :index}
      else
        format.html {render :index}
      end
    end
  end

  private
    def allergies_params
      params.require(:allergy).permit(:background_id, :allergy_name)
    end

end
