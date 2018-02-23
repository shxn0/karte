class PastMedicalHistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_past_medical_history, only: [:show, :edit, :update, :destroy]

  def index
    @past_medical_histories = PastMedicalHistory.all
    @past_medical_histories.each do |past_medical_history|
      if past_medical_history.background_id == current_user.background.id
        @past_medical_history = past_medical_history
      end
    end
  end

  def new
    @past_medical_history = PastMedicalHistory.new
  end

  def create
    @past_medical_history = PastMedicalHistory.new(histories_params)
    @past_medical_history.background_id = current_user.background.id
      if @past_medical_history.save
        redirect_to past_medical_histories_path, notice:"Your registration has been compleated"
      else
        render "new" if @past_medical_history.invalid?
      end
  end

  def edit
  end

  def update
    @past_medical_history.update(histories_params)
    if @past_medical_history.invalid?
      render "edit"
    else
      redirect_to past_medical_histories_path
    end
  end

  def destroy
    if @past_medical_history.destroy
      redirect_to past_medical_histories_path, notice:"Past medical history has been deleted"
    end
  end

private

  def histories_params
    params.require(:past_medical_history).permit(:icd_code,:brain_disease_in_the_past,:heart_disease_in_the_past,:surgery_in_the_past,:hospitalized_in_the_past,:attending_to_a_hospital_now)
  end

  def set_past_medical_history
    @past_medical_history = PastMedicalHistory.find(params[:id])
  end

end
