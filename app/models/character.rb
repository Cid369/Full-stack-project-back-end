# frozen_string_literal: true

class Character < ApplicationRecord
  belongs_to :user
  # validates :text, :user, presence: true
end
