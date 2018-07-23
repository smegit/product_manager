class CreateFunctions < ActiveRecord::Migration[5.0]
  def change
    create_table :functions do |t|
      t.string :control_type
      t.string :product_type
      t.string :function_code
      t.string :descritpion

      t.timestamps
    end
  end
end
