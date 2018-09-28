class ChangeProductStatusToString < ActiveRecord::Migration[5.0]
  def change  
    change_column :products, :status, :string
  end
end
