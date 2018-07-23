class SystemControl < ApplicationRecord
  # has_one :function_icons
  mount_uploader :system_control_url, FunctionIconUploader
  has_paper_trail

  # accepts_nested_attributes_for :function_icon_url, reject_if: :all_blank, allow_destroy: true

  jsonb_accessor :value,
                 product_type: :string,
                 function_code: :string,
                 description: :string,
                 function_icon_url: :string,
                 aesthetic_description: :string,
                 aesthetic_code: :string
end
