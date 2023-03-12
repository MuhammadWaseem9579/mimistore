# frozen_string_literal: true

class Category < ApplicationRecord
  scope :enabled, -> { where(enabled: true) }
end
