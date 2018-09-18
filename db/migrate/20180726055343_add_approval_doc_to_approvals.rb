class AddApprovalDocToApprovals < ActiveRecord::Migration[5.0]
  def change
    add_column :approvals, :approval_doc, :string
  end
end
