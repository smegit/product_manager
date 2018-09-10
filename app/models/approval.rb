class Approval < ApplicationRecord
  include PgSearch
  pg_search_scope :search_approvals,
                  against: %i[approval_type sub_type approval_no],
                  using: { tsearch: { prefix: true, any_word: false } }
  has_many :product_approvals, dependent: :destroy
  has_many :products, through: :product_approvals
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
  mount_uploader :approval_doc, ApprovalDocUploader

  validates :approval_no, presence: true, uniqueness: { case_sensitive: false}

  def to_s
    @model_number
  end
end







