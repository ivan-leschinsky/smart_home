class CreateHumidities < ActiveRecord::Migration
  def change
    create_table :humidities do |t|
      t.string :humidity

      t.timestamps
    end
  end
end
