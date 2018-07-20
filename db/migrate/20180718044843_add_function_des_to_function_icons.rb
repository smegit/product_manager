class AddFunctionDesToFunctionIcons < ActiveRecord::Migration[5.0]
  def change
    add_column :function_icons, :function_des, :string
  end
end
