class Humidity < ActiveRecord::Base
  def self.chart_data
    all.select(:humidity).group(:created_at, :humidity).count.keys
  end
end
