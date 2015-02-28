class Pressure < ActiveRecord::Base
  def self.chart_data
    all.select(:pressure).group(:created_at, :pressure).count.keys
  end
end
