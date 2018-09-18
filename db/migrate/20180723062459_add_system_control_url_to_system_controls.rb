class AddSystemControlUrlToSystemControls < ActiveRecord::Migration[5.0]
  def change
    add_column :system_controls, :system_control_url, :string
    add_column :system_controls, :string, :string
  end
end
