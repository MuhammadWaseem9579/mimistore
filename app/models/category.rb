# frozen_string_literal: true

class Category < ApplicationRecord
  has_ancestry
  
  scope :enabled, -> { where(enabled: true) }
end
