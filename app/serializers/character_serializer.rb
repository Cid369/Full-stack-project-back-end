class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :hp
end
