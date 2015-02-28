class Pressure < ActiveRecord::Base
  def self.chart_data
    all.select(:pressure).group(:created_at, :temp).count.keys
  end
end
