class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :system_controls, :type, :control_type
  end
end
