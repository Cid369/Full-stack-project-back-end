# frozen_string_literal: true

class Special < ApplicationRecord
  belongs_to :character
  # validates :text, :user, presence: true
end
