# frozen_string_literal: true

module Mutations
  class UpdateVolcano < BaseMutation
  # Arguments de la mutation
  argument :id, ID, required: true
  argument :volcano_name, String, required: false
  argument :primary_volcano_type, String, required: false
  argument :last_eruption_year, Integer, required: false
  argument :country, String, required: false
  argument :region, String, required: false
  argument :subregion, String, required: false
  argument :latitude, Float, required: false
  argument :longitude, Float, required: false
  argument :elevation, Integer, required: false
  argument :tectonic_settings, String, required: false
  argument :evidence_category, String, required: false
  argument :major_rock_1, String, required: false
  argument :major_rock_2, String, required: false
  argument :major_rock_3, String, required: false
  argument :major_rock_4, String, required: false
  argument :major_rock_5, String, required: false
  argument :minor_rock_1, String, required: false
  argument :minor_rock_2, String, required: false
  argument :minor_rock_3, String, required: false
  argument :minor_rock_4, String, required: false
  argument :minor_rock_5, String, required: false
  argument :population_within_5_km, Integer, required: false
  argument :population_within_10_km, Integer, required: false
  argument :population_within_30_km, Integer, required: false
  argument :population_within_100_km, Integer, required: false

  field :volcano, Types::VolcanoType, null: true
  field :errors, [String], null: false

  def resolve(id:, **attributes)
    volcano = Volcano.find_by(id: id)

    if volcano.nil?
      return { volcano: nil, errors: ["Volcano not found"] }
    end

    if volcano.update(attributes)
      { volcano: volcano, errors: [] }
    else
      { volcano: nil, errors: volcano.errors.full_messages }
    end
  end
  end
end
