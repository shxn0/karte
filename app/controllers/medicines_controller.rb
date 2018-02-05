class MedicinesController < ApplicationController

  def create
    @medicine = current_user.background.medicines.build(medicines_params)
    # @background = @medicine.background
    # @medicines = @background.medicines

    respond_to do |format|
      if @medicine.save
        format.html {redirect_to backgrounds_path}
        format.js {render :index}
      else
        format.html {render :index}
      end
    end
  end

  def destroy

    @medicine = Medicine.find(params[:id])
    respond_to do |format|
      if @medicine.destroy
        format.html {redirect_to backgrounds_path}
        format.js {render :index}
      else
        format.html {render :index}
      end
    end
  end

  private

    def medicines_params
      params.require(:medicine).permit(:background_id, :medicine_name)
    end


end
