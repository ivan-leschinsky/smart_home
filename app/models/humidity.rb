class Humidity < ActiveRecord::Base
  def self.chart_data
    all.select(:humidity).group(:created_at, :temp).count.keys
  end
end
