class CreateProductApprovals < ActiveRecord::Migration[5.0]
  def change
    create_table :product_approvals do |t|
      t.references :product
      t.references :approval

      t.timestamps
    end
  end
end
