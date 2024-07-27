class Pet < ApplicationRecord
  SPECIES = %w[dog cat turtle dragon snake rabbit].freeze

  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    days_ago = (Date.today - found_on).to_i
    if days_ago.zero?
      'today'
    elsif days_ago == 1
      'yesterday'
    else
      "#{days_ago} days ago"
    end
  end
end
