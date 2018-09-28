class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :order_no
      t.string :model_no
      t.integer :qty
      t.integer :qty_d
      t.float :price

      t.timestamps
    end
  end
end
