# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :delete_volcano, mutation: Mutations::DeleteVolcano
    field :update_volcano, mutation: Mutations::UpdateVolcano
    field :create_volcano, mutation: Mutations::CreateVolcano
  # field :delete_volcano, mutation: Mutations::DeleteVolcano
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end
  end
end
