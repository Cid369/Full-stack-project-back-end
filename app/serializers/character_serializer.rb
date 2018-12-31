# frozen_string_literal: true

class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :hp, :user_id
end
