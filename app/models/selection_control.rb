class SelectionControl < ApplicationRecord
  include PgSearch
  pg_search_scope :search_selection_controls, 
                  against: %i[name value code label],
                  using: { tsearch: { prefix: true, any_word: false } }
  validates :name, presence: true
  validates :value, presence: true
  validates :code, presence: true
end


