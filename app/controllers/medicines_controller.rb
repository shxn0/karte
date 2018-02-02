class MedicinesController < ApplicationController

  def index
    @medicines = current_user.background.medicines
  end

  def create
    @medicine = current_user.background.medicines.build(medicines_params)
    @background = @medicine.background
    if @medicine.save
      redirect_to backgrounds_path
    end
  end

  private

    def medicines_params
      params.require(:medicine).permit(:background_id, :medicine_name)
    end


end
