class TemperaturesController < ApplicationController
  def index
    @temperatures = Temperature.all.select(:temp).group(:created_at, :temp).count.keys
  end

  def update
    Temperature.create(permitted_params.slice(:temp))
    # Humidity.create(permitted_params.slice(:humidity))
    # Pressure.create(permitted_params.slice(:pressure))
  end

  private

  def permitted_params
    params.permit!
  end
end
