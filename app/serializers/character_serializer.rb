class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :hp, :user_id
  has_one :user
end
