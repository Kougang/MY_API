# frozen_string_literal: true

module Types
  class VolcanoType < Types::BaseObject
    field :id, ID, null: false
    field :volcano_number, Integer
    field :volcano_name, String
    field :primary_volcano_type, String
    field :last_eruption_year, Integer
    field :country, String
    field :region, String
    field :subregion, String
    field :latitude, Float
    field :longitude, Float
    field :elevation, Integer
    field :tectonic_settings, String
    field :evidence_category, String
    field :major_rock_1, String
    field :major_rock_2, String
    field :major_rock_3, String
    field :major_rock_4, String
    field :major_rock_5, String
    field :minor_rock_1, String
    field :minor_rock_2, String
    field :minor_rock_3, String
    field :minor_rock_4, String
    field :minor_rock_5, String
    field :population_within_5_km, Integer
    field :population_within_10_km, Integer
    field :population_within_30_km, Integer
    field :population_within_100_km, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
