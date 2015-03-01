class TemperaturesController < ApplicationController
  def index
    @temperatures = Temperature.chart_data
    @humidities = Humidity.chart_data
    @humidities = Pressure.chart_data
  end

  def update
    Temperature.create(permitted_params.slice(:temp)) if permitted_params.slice(:temp).present?
    Humidity.create(permitted_params.slice(:humidity)) if permitted_params.slice(:humidity).present?
    Pressure.create(permitted_params.slice(:pressure)) if permitted_params.slice(:pressure).present?
    head :ok
  end

  private

  def permitted_params
    params.permit!
  end
end
