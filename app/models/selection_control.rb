class SelectionControl < ApplicationRecord
  include PgSearch
  pg_search_scope :search_selection_controls, 
                  against: [:value],
                  using: { tsearch: { prefix: true, any_word: false } }
  has_paper_trail
end


