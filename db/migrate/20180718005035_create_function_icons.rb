class CreateFunctionIcons < ActiveRecord::Migration[5.0]
  def change
    create_table :function_icons do |t|
      t.string :function
      t.string :code
      t.string :icon_url

      t.timestamps
    end
  end
end
