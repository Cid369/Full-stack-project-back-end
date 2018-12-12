class AddIdToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_reference :characters, :character, foreign_key: true
  end
end
