class AddDescriptionToSystemControls < ActiveRecord::Migration[5.0]
  def change
    add_column :system_controls, :description, :string
  end
end
