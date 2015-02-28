class CreatePressures < ActiveRecord::Migration
  def change
    create_table :pressures do |t|
      t.string :pressure

      t.timestamps
    end
  end
end
