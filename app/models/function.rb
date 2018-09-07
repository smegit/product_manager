class Function < ApplicationRecord
  include PgSearch
  pg_search_scope :search_functions,
                  against: %i[product_type description],
                  using: { tsearch: { prefix: true, any_word: false } }
  mount_uploader :url, FunctionIconUploader
end





