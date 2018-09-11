class Aesthetic < ApplicationRecord
  include PgSearch
  pg_search_scope :search_aesthetics,
                  against: %i[aesthetic_code aesthetic_description],
                  using: { tsearch: { prefix: true, any_word: false } }
  validates :aesthetic_code, presence: true, uniqueness: { case_sensitive: false}
  validates :aesthetic_description, presence: true
end

