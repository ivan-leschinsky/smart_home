class TemperaturesController < ApplicationController
  def index
    @temperatures = Temperature.chart_data
    @humidities = Humidity.chart_data
    @humidities = Pressure.chart_data
  end

  def update
    Temperature.create(permitted_params.slice(:temp))
    Humidity.create(permitted_params.slice(:humidity))
    Pressure.create(permitted_params.slice(:pressure))
  end

  private

  def permitted_params
    params.permit!
  end
end
