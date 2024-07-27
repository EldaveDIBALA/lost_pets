class Pet < ApplicationRecord
  SPECIES = %w[dog cat turtle dragon snake rabbit].freeze

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
