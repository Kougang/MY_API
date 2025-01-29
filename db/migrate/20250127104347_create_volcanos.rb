class CreateVolcanos < ActiveRecord::Migration[8.0]
  def change
    create_table :volcanos do |t|
      t.integer :volcano_number
      t.string :volcano_name
      t.string :primary_volcano_type
      t.integer :last_eruption_year
      t.string :country
      t.string :region
      t.string :subregion
      t.float :latitude
      t.float :longitude
      t.integer :elevation
      t.string :tectonic_settings
      t.string :evidence_category
      t.string :major_rock_1
      t.string :major_rock_2
      t.string :major_rock_3
      t.string :major_rock_4
      t.string :major_rock_5
      t.string :minor_rock_1
      t.string :minor_rock_2
      t.string :minor_rock_3
      t.string :minor_rock_4
      t.string :minor_rock_5
      t.integer :population_within_5_km
      t.integer :population_within_10_km
      t.integer :population_within_30_km
      t.integer :population_within_100_km

      t.timestamps
    end
  end
end
