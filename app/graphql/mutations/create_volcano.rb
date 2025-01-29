# frozen_string_literal: true
module Mutations
  class CreateVolcano < BaseMutation
    argument :volcano_name, String, required: true
    argument :primary_volcano_type, String, required: true
    argument :country, String, required: true
    argument :elevation, Integer, required: true

    field :volcano, Types::VolcanoType, null: false
    field :errors, [String], null: false

    def resolve(volcano_name:, primary_volcano_type:, country:, elevation:)
      volcano = Volcano.new(
        volcano_name: volcano_name,
        primary_volcano_type: primary_volcano_type,
        country: country,
        elevation: elevation
      )

      if volcano.save
        { volcano: volcano, errors: [] }
      else
        { volcano: nil, errors: volcano.errors.full_messages }
      end
    end
  end
end