class ProductApproval < ApplicationRecord
  belongs_to :product
  belongs_to :approval
end
