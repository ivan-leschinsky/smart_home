class Temperature < ActiveRecord::Base
  def self.chart_data
    all.select(:temp).group(:created_at, :temp).count.keys
  end
end
