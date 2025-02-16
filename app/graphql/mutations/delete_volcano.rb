# frozen_string_literal: true

module Mutations
  class DeleteVolcano < BaseMutation
    argument :id, ID, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false

    def resolve(id:)
      volcano = Volcano.find_by(id: id)

      if volcano.nil?
        return { success: false, errors: ["Volcano not found"] }
      end

      if volcano.destroy
        { success: true, errors: [] }
      else
        { success: false, errors: volcano.errors.full_messages }
      end
    end
  end
end
