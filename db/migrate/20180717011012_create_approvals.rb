class CreateApprovals < ActiveRecord::Migration[5.0]
  def change
    create_table :approvals do |t|
      t.string :approval_type
      t.date :date
      t.string :approval_no
      t.string :sub_type
      t.string :description
      t.string :standard
      t.string :reference
      t.date :effective_date
      t.date :expiry_date
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
