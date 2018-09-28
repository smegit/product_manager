class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.date :date
      t.string :name
      t.string :reference
      t.string :rep_code
      t.string :status

      t.timestamps
    end
  end
end
