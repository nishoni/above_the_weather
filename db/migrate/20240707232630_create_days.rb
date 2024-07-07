class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.integer :temperature_celcius
      t.integer :temperature_fahrenheit
      t.integer :wind_speed
      t.integer :uv_index
      t.string :day_of_week
      t.string :humidity
      t.string :weather
      t.datetime :sunrise
      t.datetime :sunset
      t.datetime :date
      t.references :town, foreign_key: { to_table: :towns }

      t.timestamps
    end
  end
end
