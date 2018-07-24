class SystemControl < ApplicationRecord
  include PgSearch

  pg_search_scope :search_system_controls,
                  against: [:control_type],
                  using: { tsearch: { prefix: true, any_word: false } }
  # has_one :function_icons
  # mount_uploader :system_control_url, FunctionIconUploader
  has_paper_trail

  # accepts_nested_attributes_for :function_icon_url, reject_if: :all_blank, allow_destroy: true

end
