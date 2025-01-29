# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# script d importation des donnees vers la base de donnees.
require 'csv'

csv_file_path = Rails.root.join('./archive/volcano.csv') 

CSV.foreach(csv_file_path, headers: true) do |row|
  Volcano.create!(
    volcano_number: row['volcano_number'],
    volcano_name: row['volcano_name'],
    primary_volcano_type: row['primary_volcano_type'],
    last_eruption_year: row['last_eruption_year'],
    country: row['country'],
    region: row['region'],
    subregion: row['subregion'],
    latitude: row['latitude'],
    longitude: row['longitude'],
    elevation: row['elevation'],
    tectonic_settings: row['tectonic_settings'],
    evidence_category: row['evidence_category'],
    major_rock_1: row['major_rock_1'],
    major_rock_2: row['major_rock_2'],
    major_rock_3: row['major_rock_3'],
    major_rock_4: row['major_rock_4'],
    major_rock_5: row['major_rock_5'],
    minor_rock_1: row['minor_rock_1'],
    minor_rock_2: row['minor_rock_2'],
    minor_rock_3: row['minor_rock_3'],
    minor_rock_4: row['minor_rock_4'],
    minor_rock_5: row['minor_rock_5'],
    population_within_5_km: row['population_within_5_km'],
    population_within_10_km: row['population_within_10_km'],
    population_within_30_km: row['population_within_30_km'],
    population_within_100_km: row['population_within_100_km']
  )
end

puts "Importation terminée avec succès ! "

