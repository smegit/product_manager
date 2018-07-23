class FixColumnName2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :functions, :descritpion, :description
  end
end
