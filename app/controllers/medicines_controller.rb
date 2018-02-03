class MedicinesController < ApplicationController

  def create
    @medicine = current_user.background.medicines.build(medicines_params)
    @background = @medicine.background
    @medicines = @background.medicines

    if @medicine.save
      respond_to do |format|
        format.html {redirect_to backgrounds_path}
        format.js {render :index}
      end
    else
      format.html {render :index}
    end
  end

  def show
    @medicine = Medicine.find(params[:id])
  end

  def destroy


  end

  private

    def medicines_params
      params.require(:medicine).permit(:background_id, :medicine_name)
    end


end
